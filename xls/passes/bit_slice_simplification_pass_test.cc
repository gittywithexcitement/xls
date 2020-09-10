// Copyright 2020 Google LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#include "xls/passes/bit_slice_simplification_pass.h"

#include <memory>

#include "gmock/gmock.h"
#include "gtest/gtest.h"
#include "absl/status/statusor.h"
#include "absl/strings/substitute.h"
#include "xls/common/status/matchers.h"
#include "xls/common/status/status_macros.h"
#include "xls/ir/bits.h"
#include "xls/ir/function.h"
#include "xls/ir/ir_interpreter.h"
#include "xls/ir/ir_matcher.h"
#include "xls/ir/ir_test_base.h"
#include "xls/ir/value.h"
#include "xls/passes/dce_pass.h"

namespace m = ::xls::op_matchers;

namespace xls {
namespace {

using status_testing::IsOkAndHolds;

class BitSliceSimplificationPassTest : public IrTestBase {
 protected:
  BitSliceSimplificationPassTest() = default;

  absl::StatusOr<bool> Run(Function* f) {
    PassResults results;
    XLS_ASSIGN_OR_RETURN(
        bool changed,
        BitSliceSimplificationPass().RunOnFunction(f, PassOptions(), &results));
    XLS_RETURN_IF_ERROR(DeadCodeEliminationPass()
                            .RunOnFunction(f, PassOptions(), &results)
                            .status());
    return changed;
  }
};

TEST_F(BitSliceSimplificationPassTest, FullWidthSlice) {
  auto p = CreatePackage();
  XLS_ASSERT_OK_AND_ASSIGN(Function * f, ParseFunction(R"(
     fn FullWidthSlice(x: bits[42]) -> bits[42] {
        ret full_slice: bits[42] = bit_slice(x, start=0, width=42)
     }
  )",
                                                       p.get()));
  EXPECT_EQ(f->node_count(), 2);
  EXPECT_THAT(Run(f), IsOkAndHolds(true));
  EXPECT_EQ(f->node_count(), 1);
  EXPECT_TRUE(f->return_value()->Is<Param>());
}

TEST_F(BitSliceSimplificationPassTest, SliceOfASlice) {
  auto p = CreatePackage();
  XLS_ASSERT_OK_AND_ASSIGN(Function * f, ParseFunction(R"(
     fn SliceOfASlice(x: bits[123]) -> bits[32] {
        slice.1: bits[74] = bit_slice(x, start=30, width=74)
        ret slice.2: bits[32] = bit_slice(slice.1, start=15, width=32)
     }
  )",
                                                       p.get()));
  EXPECT_EQ(f->node_count(), 3);
  EXPECT_THAT(Run(f), IsOkAndHolds(true));
  EXPECT_EQ(f->node_count(), 2);
  EXPECT_THAT(f->return_value(),
              m::BitSlice(m::Param(), /*start=*/45, /*width=*/32));
}

TEST_F(BitSliceSimplificationPassTest, SliceOfTrivialConcat) {
  auto p = CreatePackage();
  XLS_ASSERT_OK_AND_ASSIGN(Function * f, ParseFunction(R"(
     fn SliceOfTrivialConcat(x: bits[42]) -> bits[10] {
        concat.1: bits[42] = concat(x)
        ret slice.2: bits[10] = bit_slice(concat.1, start=5, width=10)
     }
  )",
                                                       p.get()));
  EXPECT_EQ(f->node_count(), 3);
  EXPECT_THAT(Run(f), IsOkAndHolds(true));
  EXPECT_EQ(f->node_count(), 3);
  EXPECT_THAT(f->return_value(),
              m::Concat(m::BitSlice(m::Param(), /*start=*/5, /*width=*/10)));
}

TEST_F(BitSliceSimplificationPassTest, SliceOfConcats) {
  const char fn_template[] = R"(
package SliceOfConcats

fn main(x: bits[4], y: bits[1], z: bits[4]) -> bits[$1] {
    concat.1: bits[9] = concat(x, y, z)
    ret slice.2: bits[$1] = bit_slice(concat.1, start=$0, width=$1)
})";
  auto gen_fn = [&](int64 start, int64 width) {
    return absl::Substitute(fn_template, start, width);
  };

  const int64 kInputWidth = 9;
  const Value x = Value(UBits(0xa, 4));
  const Value y = Value(UBits(1, 1));
  const Value z = Value(UBits(0x5, 4));

  // Try all possible combinations of start and width. Verify that the
  // interpreted IR generates the same value before and after.
  for (int64 start = 0; start < kInputWidth; ++start) {
    for (int64 width = 1; width < kInputWidth - start; ++width) {
      XLS_ASSERT_OK_AND_ASSIGN(auto p, ParsePackage(gen_fn(start, width)));
      XLS_ASSERT_OK_AND_ASSIGN(Function * entry, p->EntryFunction());
      XLS_ASSERT_OK_AND_ASSIGN(Value expected,
                               ir_interpreter::Run(entry, {x, y, z}));

      EXPECT_TRUE(entry->return_value()->Is<BitSlice>());
      EXPECT_THAT(Run(entry), IsOkAndHolds(true));
      EXPECT_TRUE(entry->return_value()->Is<Concat>());

      XLS_ASSERT_OK_AND_ASSIGN(Value actual,
                               ir_interpreter::Run(entry, {x, y, z}));
      EXPECT_EQ(expected, actual);
    }
  }
}

TEST_F(BitSliceSimplificationPassTest, SoleSliceOfAnd) {
  auto p = CreatePackage();
  XLS_ASSERT_OK_AND_ASSIGN(Function * f, ParseFunction(R"(
     fn f(x: bits[42], y: bits[42]) -> bits[32] {
        and.3: bits[42] = and(x, y)
        ret slice.4: bits[32] = bit_slice(and.3, start=7, width=32)
     }
  )",
                                                       p.get()));
  EXPECT_TRUE(f->return_value()->Is<BitSlice>());
  XLS_ASSERT_OK(Run(f));
  EXPECT_THAT(f->return_value(),
              m::And(m::BitSlice(/*start=*/7, /*width=*/32),
                     m::BitSlice(/*start=*/7, /*width=*/32)));
}

TEST_F(BitSliceSimplificationPassTest, SoleSliceLowBitsOfAdd) {
  auto p = CreatePackage();
  XLS_ASSERT_OK_AND_ASSIGN(Function * f, ParseFunction(R"(
     fn f(x: bits[42], y: bits[42]) -> bits[32] {
        add.3: bits[42] = add(x, y)
        ret slice.4: bits[32] = bit_slice(add.3, start=0, width=32)
     }
  )",
                                                       p.get()));
  EXPECT_TRUE(f->return_value()->Is<BitSlice>());
  XLS_ASSERT_OK(Run(f));
  EXPECT_THAT(f->return_value(),
              m::Add(m::BitSlice(/*start=*/0, /*width=*/32),
                     m::BitSlice(/*start=*/0, /*width=*/32)));
}

TEST_F(BitSliceSimplificationPassTest,
       SoleSliceNotLowBitsOfAddDoesNotOptimize) {
  auto p = CreatePackage();
  const std::string program = R"(fn f(x: bits[42], y: bits[42]) -> bits[32] {
  add.3: bits[42] = add(x, y)
  ret bit_slice.4: bits[32] = bit_slice(add.3, start=1, width=32)
}
)";
  XLS_ASSERT_OK_AND_ASSIGN(Function * f, ParseFunction(program, p.get()));
  EXPECT_TRUE(f->return_value()->Is<BitSlice>());
  XLS_ASSERT_OK(Run(f));
  EXPECT_EQ(f->DumpIr(), program);
}

TEST_F(BitSliceSimplificationPassTest, SliceOfSignExtCaseOne) {
  auto p = CreatePackage();
  XLS_ASSERT_OK_AND_ASSIGN(Function * f, ParseFunction(R"(
 fn f(x: bits[8]) -> bits[5] {
    sign_ext.2: bits[24] = sign_ext(x, new_bit_count=24)
    ret bit_slice.3: bits[5] = bit_slice(sign_ext.2, start=2, width=5)
 }
  )",
                                                       p.get()));
  ASSERT_THAT(Run(f), IsOkAndHolds(true));
  EXPECT_THAT(f->return_value(), m::BitSlice(m::Param()));
}

TEST_F(BitSliceSimplificationPassTest, SliceOfSignExtCaseOneStartingAtZero) {
  auto p = CreatePackage();
  XLS_ASSERT_OK_AND_ASSIGN(Function * f, ParseFunction(R"(
 fn f(x: bits[8]) -> bits[16] {
    sign_ext.2: bits[24] = sign_ext(x, new_bit_count=24)
    ret bit_slice.3: bits[16] = bit_slice(sign_ext.2, start=0, width=16)
 }
  )",
                                                       p.get()));
  ASSERT_THAT(Run(f), IsOkAndHolds(true));
  EXPECT_THAT(f->return_value(), m::SignExt(m::Param()));
}

TEST_F(BitSliceSimplificationPassTest, SliceOfSignExtCaseTwo) {
  auto p = CreatePackage();
  XLS_ASSERT_OK_AND_ASSIGN(Function * f, ParseFunction(R"(
 fn f(x: bits[8]) -> bits[5] {
    sign_ext.2: bits[24] = sign_ext(x, new_bit_count=24)
    ret bit_slice.3: bits[5] = bit_slice(sign_ext.2, start=4, width=5)
 }
  )",
                                                       p.get()));
  ASSERT_THAT(Run(f), IsOkAndHolds(true));
  EXPECT_THAT(f->return_value(),
              m::SignExt(m::BitSlice(m::Param(), /*start=*/4, /*width=*/4)));
}

TEST_F(BitSliceSimplificationPassTest, SliceOfSignExtCaseTwoExactlyTheSignBit) {
  auto p = CreatePackage();
  XLS_ASSERT_OK_AND_ASSIGN(Function * f, ParseFunction(R"(
 fn f(x: bits[8]) -> bits[5] {
    sign_ext.2: bits[24] = sign_ext(x, new_bit_count=24)
    ret bit_slice.3: bits[5] = bit_slice(sign_ext.2, start=7, width=5)
 }
  )",
                                                       p.get()));
  ASSERT_THAT(Run(f), IsOkAndHolds(true));
  EXPECT_THAT(f->return_value(),
              m::SignExt(m::BitSlice(m::Param(), /*start=*/7, /*width=*/1)));
}

TEST_F(BitSliceSimplificationPassTest, SliceOfSignExtCaseCaseThree) {
  auto p = CreatePackage();
  XLS_ASSERT_OK_AND_ASSIGN(Function * f, ParseFunction(R"(
 fn f(x: bits[8]) -> bits[5] {
    sign_ext.2: bits[24] = sign_ext(x, new_bit_count=24)
    ret bit_slice.3: bits[5] = bit_slice(sign_ext.2, start=12, width=5)
 }
  )",
                                                       p.get()));
  ASSERT_THAT(Run(f), IsOkAndHolds(true));
  EXPECT_THAT(f->return_value(),
              m::SignExt(m::BitSlice(m::Param(), /*start=*/7, /*width=*/1)));
}

TEST_F(BitSliceSimplificationPassTest, DynamicBitSliceLiteralStart) {
  auto p = CreatePackage();
  XLS_ASSERT_OK_AND_ASSIGN(Function * f, ParseFunction(R"(
 fn f(x: bits[42]) -> bits[15] {
    literal.1: bits[23] = literal(value=6)
    ret dynamic_bit_slice.2: bits[15] = dynamic_bit_slice(x, literal.1, width=15)
 }
  )",
                                                       p.get()));
  ASSERT_THAT(Run(f), IsOkAndHolds(true));
  EXPECT_THAT(f->return_value(),
              m::BitSlice(m::Param(), /*start=*/6, /*width=*/15));
}

TEST_F(BitSliceSimplificationPassTest, DynamicBitSliceLiteralStartOob) {
  auto p = CreatePackage();
  XLS_ASSERT_OK_AND_ASSIGN(Function * f, ParseFunction(R"(
 fn f(x: bits[42]) -> bits[15] {
    literal.1: bits[23] = literal(value=35)
    ret dynamic_bit_slice.2: bits[15] = dynamic_bit_slice(x, literal.1, width=15)
 }
  )",
                                                       p.get()));
  ASSERT_THAT(Run(f), IsOkAndHolds(false));
  EXPECT_THAT(f->return_value(), m::DynamicBitSlice(m::Param(), m::Literal()));
}

TEST_F(BitSliceSimplificationPassTest, DynamicBitSliceLiteralInput) {
  auto p = CreatePackage();
  XLS_ASSERT_OK_AND_ASSIGN(Function * f, ParseFunction(R"(
 fn f(x: bits[30]) -> bits[15] {
    literal.1: bits[30] = literal(value=6)
    ret dynamic_bit_slice.2: bits[15] = dynamic_bit_slice(literal.1, x, width=15)
 }
  )",
                                                       p.get()));
  ASSERT_THAT(Run(f), IsOkAndHolds(false));
  EXPECT_THAT(f->return_value(), m::DynamicBitSlice(m::Literal(), m::Param()));
}

TEST_F(BitSliceSimplificationPassTest, DynamicBitSliceNonLiteral) {
  auto p = CreatePackage();
  XLS_ASSERT_OK_AND_ASSIGN(Function * f, ParseFunction(R"(
 fn f(x: bits[42], y: bits[33]) -> bits[35] {
    ret dynamic_bit_slice.1: bits[35] = dynamic_bit_slice(x, y, width=35)
 }
  )",
                                                       p.get()));
  ASSERT_THAT(Run(f), IsOkAndHolds(false));
  EXPECT_THAT(f->return_value(), m::DynamicBitSlice(m::Param(), m::Param()));
}

}  // namespace
}  // namespace xls

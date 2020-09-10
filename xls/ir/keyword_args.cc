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

#include "xls/ir/keyword_args.h"

#include "absl/strings/str_format.h"
#include "xls/common/logging/logging.h"
#include "xls/common/status/status_macros.h"

namespace xls {

absl::StatusOr<std::vector<Value>> KeywordArgsToPositional(
    const Function& function,
    const absl::flat_hash_map<std::string, Value>& kwargs) {
  XLS_VLOG(2) << "Interpreting function " << function.name()
              << " with arguments:";

  // Make nice error messages with the name in the error message if a kwarg is
  // missing.
  for (Param* param : function.params()) {
    if (!kwargs.contains(param->name())) {
      return absl::InvalidArgumentError(absl::StrFormat(
          "Missing argument '%s' to invocation of function '%s'", param->name(),
          function.name()));
    }
  }

  std::vector<Value> positional_args;
  positional_args.resize(kwargs.size());
  for (const auto& pair : kwargs) {
    XLS_VLOG(2) << "  " << pair.first << " = " << pair.second;
    XLS_ASSIGN_OR_RETURN(Param * param, function.GetParamByName(pair.first));
    XLS_ASSIGN_OR_RETURN(int64 param_index, function.GetParamIndex(param));
    positional_args.at(param_index) = pair.second;
  }

  return positional_args;
}

}  // namespace xls

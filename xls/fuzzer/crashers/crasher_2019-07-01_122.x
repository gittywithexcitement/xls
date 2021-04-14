// Copyright 2020 The XLS Authors
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

// options: {"input_is_dslx": true, "convert_to_ir": true, "optimize_ir": true, "codegen": true, "codegen_args": ["--generator=pipeline", "--pipeline_stages=3"], "simulate": false, "simulator": null}
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x9892c; bits[16]:0xbe
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0xb8a2d; bits[16]:0xc270
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0xf071; bits[16]:0x125c
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x6bbbf; bits[16]:0x2000
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x0; bits[16]:0x3e24
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0xd580e; bits[16]:0x96c5
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0xe4e57; bits[16]:0x553a
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x838d7; bits[16]:0x7480
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0xd43ca; bits[16]:0xda37
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x1515c; bits[16]:0x9829
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0x31b00; bits[16]:0x4c94
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x81dab; bits[16]:0xd3c5
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0xa37da; bits[16]:0xd709
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x74a1d; bits[16]:0xb6a2
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0xb7b6b; bits[16]:0x1743
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0x26538; bits[16]:0x2
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x7efba; bits[16]:0x858a
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0xb1697; bits[16]:0x96a2
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0x73180; bits[16]:0x32ad
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x9f5c1; bits[16]:0x658b
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x20; bits[16]:0x3203
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0xbeff1; bits[16]:0xdb4b
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0xe03ad; bits[16]:0x7865
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0x418a8; bits[16]:0xd380
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x1b2bd; bits[16]:0xacab
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x9c26c; bits[16]:0xa401
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0xe7d96; bits[16]:0x69c4
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x70ea; bits[16]:0x607c
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0x6b5db; bits[16]:0x80
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0xe5553; bits[16]:0x18ac
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0xf919c; bits[16]:0x2f9c
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x9789d; bits[16]:0x5796
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0xe6112; bits[16]:0x9224
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x40ba2; bits[16]:0xc6f4
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x7c77f; bits[16]:0xfab1
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0x0; bits[16]:0xd4cd
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0x3fd5f; bits[16]:0xc5f3
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x10; bits[16]:0x341e
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0xf59d6; bits[16]:0x400
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0xb7c5f; bits[16]:0xcf99
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0xf6d0a; bits[16]:0x3975
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x7c282; bits[16]:0x5e97
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0xa12f6; bits[16]:0xb820
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x7c55b; bits[16]:0xe3da
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x43da9; bits[16]:0x9ccd
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0xe12d9; bits[16]:0x23f7
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x30137; bits[16]:0x9ada
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0x20000; bits[16]:0xc761
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0x4; bits[16]:0xdaec
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0xbbd9d; bits[16]:0x1fb9
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0x9a6f8; bits[16]:0x302c
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0xdf953; bits[16]:0xab9
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0xe5628; bits[16]:0xffff
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0x761c9; bits[16]:0x6028
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0x99006; bits[16]:0x3928
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x6ffcd; bits[16]:0x10bc
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x10496; bits[16]:0xc2b3
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x87e7d; bits[16]:0x80
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0x5be60; bits[16]:0x1ccc
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0x8d799; bits[16]:0x5262
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0x1f1c9; bits[16]:0x4492
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0xc2b81; bits[16]:0x5117
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0x99a8a; bits[16]:0x2a8f
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x24233; bits[16]:0x1
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0x23245; bits[16]:0x5739
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x25d5; bits[16]:0x7140
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0xcf0eb; bits[16]:0x86fa
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0x8a0a7; bits[16]:0x592a
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0x5edc7; bits[16]:0x56dc
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x5922c; bits[16]:0x400
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0xd5136; bits[16]:0xda75
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0x6357a; bits[16]:0x2
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x2a4fd; bits[16]:0x4ec7
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0xc248d; bits[16]:0xc75
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0x2ffbb; bits[16]:0xfe4
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0xeb84c; bits[16]:0x800
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x74646; bits[16]:0xb3e5
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0x4183b; bits[16]:0xbca
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x7bf79; bits[16]:0x9c3d
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0x42a09; bits[16]:0xa8f7
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0x9256b; bits[16]:0x5991
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x9ae3a; bits[16]:0x98dc
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x897e; bits[16]:0xa702
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x7b003; bits[16]:0x3dd5
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0x9ea89; bits[16]:0xe019
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x6ac0b; bits[16]:0xe36a
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x17d57; bits[16]:0x5158
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x9db42; bits[16]:0x2
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x43648; bits[16]:0x86b0
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0x4; bits[16]:0x40
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0xa1e1d; bits[16]:0xd27e
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0xcc93; bits[16]:0x100
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0xe82aa; bits[16]:0x7a1a
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x1865a; bits[16]:0x808a
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0xae939; bits[16]:0xa55d
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x800; bits[16]:0xccd0
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0xfb9cd; bits[16]:0x358f
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0x21b8a; bits[16]:0xe34f
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x5d0ce; bits[16]:0x798a
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x60873; bits[16]:0xdd7
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x1351d; bits[16]:0x1ea2
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x765df; bits[16]:0xec1f
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0x2000; bits[16]:0xe350
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0xf298c; bits[16]:0xfcb
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x54f76; bits[16]:0x4000
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0xaaa19; bits[16]:0x100
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0xb307; bits[16]:0x7d80
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x1b0ee; bits[16]:0x12d6
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0x2; bits[16]:0x9a5d
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x80; bits[16]:0xd16f
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x1; bits[16]:0x152
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x9d1e1; bits[16]:0x6d32
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0x121bd; bits[16]:0x8910
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x67638; bits[16]:0xa85d
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0x8e564; bits[16]:0x3826
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0xe81ad; bits[16]:0x591e
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x40b81; bits[16]:0x80bd
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0xe7563; bits[16]:0x8000
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0xbb4f2; bits[16]:0xa775
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x5704f; bits[16]:0x47d0
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0xc0395; bits[16]:0xaf6d
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0xc1020; bits[16]:0x4119
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0xb0d6f; bits[16]:0x9f64
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x10000; bits[16]:0x800
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0x192a; bits[16]:0x8f9a
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x6d8eb; bits[16]:0x469f
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x45717; bits[16]:0x7564
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0xe9fc8; bits[16]:0x12b8
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0x9196; bits[16]:0x723e
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0xc58a8; bits[16]:0x761e
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x0; bits[16]:0x68ac
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x564f4; bits[16]:0x2d4
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x8ec69; bits[16]:0xa91c
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0x235ed; bits[16]:0xe592
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0x4000; bits[16]:0x1
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0x6da03; bits[16]:0xca9c
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x800; bits[16]:0x67bc
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x6bb72; bits[16]:0xcd1d
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0x9ec74; bits[16]:0x48d9
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0x71fe8; bits[16]:0xa84
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x2c2; bits[16]:0xb774
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x5c0c4; bits[16]:0x4000
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0x50c54; bits[16]:0x811
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x9333d; bits[16]:0x55f4
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0xa0e8c; bits[16]:0xd9a7
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0xcc9de; bits[16]:0x82f7
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x7b9da; bits[16]:0x2a86
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0x133fd; bits[16]:0x1d3d
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0xc1f37; bits[16]:0x69e2
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x7ffff; bits[16]:0x8
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x4c078; bits[16]:0x9231
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0xef93d; bits[16]:0xcbef
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x3365f; bits[16]:0xfd0a
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0xda989; bits[16]:0x32e9
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0xbf758; bits[16]:0x6545
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x1; bits[16]:0xae3
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0x69378; bits[16]:0xc20b
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0xa136a; bits[16]:0xb984
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0xac6da; bits[16]:0xaaaa
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0x69611; bits[16]:0x1253
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x2aff6; bits[16]:0x462f
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x37096; bits[16]:0x52dd
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0xb5371; bits[16]:0x79e7
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0x2efaa; bits[16]:0xb8f3
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0xcc1e3; bits[16]:0x2ffb
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0x2ad15; bits[16]:0x4
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0xdaf07; bits[16]:0xf64b
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x5be97; bits[16]:0x4c4a
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0xd9850; bits[16]:0x4000
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0xb7427; bits[16]:0x186b
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0xe7da2; bits[16]:0xff61
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0xd765d; bits[16]:0xe291
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0x8cddf; bits[16]:0x5fbb
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0xcb6ad; bits[16]:0xf651
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x94104; bits[16]:0x400
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x91710; bits[16]:0x7546
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0x5923f; bits[16]:0xccaa
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0x14cf1; bits[16]:0x13b5
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0xc585b; bits[16]:0xc13c
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x585ef; bits[16]:0xc93
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x19512; bits[16]:0x55ca
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0x6c069; bits[16]:0xe3c3
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0x2fbc0; bits[16]:0xddc6
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0x52df7; bits[16]:0x7949
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x94e24; bits[16]:0x44ea
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0xf56d6; bits[16]:0x8221
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x4000; bits[16]:0xb70
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0xf5a61; bits[16]:0x0
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x936dc; bits[16]:0xbc7e
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x62ae6; bits[16]:0xc503
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0x35db9; bits[16]:0x6a76
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0x6fc17; bits[16]:0x3dcc
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x12212; bits[16]:0xc5e2
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x7165a; bits[16]:0xa8f4
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x9789f; bits[16]:0xf10b
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x3ad34; bits[16]:0x1a98
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x7a7f4; bits[16]:0x788d
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0xfffff; bits[16]:0x19c0
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0x50e12; bits[16]:0x5f0a
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0xe94eb; bits[16]:0x7575
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x200; bits[16]:0x1
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0x4deef; bits[16]:0xaa7a
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0xdf2d1; bits[16]:0x1451
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x6e752; bits[16]:0x80
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x36384; bits[16]:0x885f
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0xa4d05; bits[16]:0x7fd6
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x69a54; bits[16]:0x73d4
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0xc7ad8; bits[16]:0x86a7
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0xb409e; bits[16]:0x5c61
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0x244c3; bits[16]:0x8eb8
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0x82b68; bits[16]:0xb61a
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x5d98e; bits[16]:0xfd45
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0xb61a; bits[16]:0x555c
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0xcaf30; bits[16]:0x4000
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x4142; bits[16]:0xa0b9
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0x82047; bits[16]:0x8b6a
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0xf46cb; bits[16]:0xfb60
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0xa616b; bits[16]:0x7160
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0x9bdfc; bits[16]:0xb00a
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0x5ae3d; bits[16]:0x3c5a
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0xd34b4; bits[16]:0xdad8
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x0; bits[16]:0xd7b8
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x6c2d1; bits[16]:0x8cf1
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x25b15; bits[16]:0x80
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0xfa064; bits[16]:0x77d4
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0xac533; bits[16]:0x4000
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x3b01b; bits[16]:0xddad
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0x6af7e; bits[16]:0xea3c
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0xb0266; bits[16]:0x200
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0x3faad; bits[16]:0xd5a9
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0x7ce67; bits[16]:0xbd59
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0xe167b; bits[16]:0x5799
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0x1a6f2; bits[16]:0x9c4b
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0xe3d2a; bits[16]:0x80ab
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0x725b6; bits[16]:0x1232
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0xc96c7; bits[16]:0x212
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0x1dc8f; bits[16]:0xcaf
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0x6d405; bits[16]:0x9c65
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0x82d38; bits[16]:0x1a9
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0x2ccc4; bits[16]:0x421d
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0xbd0b0; bits[16]:0x6a70
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0xa6fb0; bits[16]:0x63de
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0xae326; bits[16]:0x5ba9
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0xdc2a2; bits[16]:0xc9e
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0xae4ad; bits[16]:0xde08
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x8f96; bits[16]:0x78f4
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0x33fb9; bits[16]:0x6ce7
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x466bb; bits[16]:0x7f02
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x8f73b; bits[16]:0x5d7e
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0xea0ca; bits[16]:0xf36f
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x7cb4f; bits[16]:0x55af
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0x6d452; bits[16]:0x5d25
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0x1cdda; bits[16]:0x18b1
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0xac5f; bits[16]:0x6d5b
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0xf6751; bits[16]:0xc97
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x4f4db; bits[16]:0xb973
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0x82a30; bits[16]:0xfed5
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x2e491; bits[16]:0xcd81
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x43b87; bits[16]:0x67a2
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x60c2e; bits[16]:0x215d
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0xb7675; bits[16]:0xb4f2
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0x888fc; bits[16]:0xe8ce
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0xd96ab; bits[16]:0x6fca
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0xbe4b; bits[16]:0xe9b7
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0xa33d9; bits[16]:0x4fe6
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0x72e2d; bits[16]:0x96c5
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0x2c743; bits[16]:0x3b0d
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0xe189f; bits[16]:0x6585
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0xb988f; bits[16]:0x8000
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0xe37fb; bits[16]:0x5aaf
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x5336; bits[16]:0xd745
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0x8d923; bits[16]:0x6e70
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0xb0de6; bits[16]:0x652
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0xbe735; bits[16]:0x75a0
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0x13161; bits[16]:0x44b5
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x7e3de; bits[16]:0xd90f
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0xd144f; bits[16]:0x5c46
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0x12978; bits[16]:0x4277
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0xfc2fd; bits[16]:0x80
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x443ca; bits[16]:0x3ee5
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0x4; bits[16]:0xb0d9
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x16a83; bits[16]:0x535b
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0x20000; bits[16]:0xb8c3
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x400; bits[16]:0x44dd
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0x2659f; bits[16]:0x2
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x7a253; bits[16]:0x10b5
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x24a9a; bits[16]:0x32ab
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0x0; bits[16]:0x1
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0xcba23; bits[16]:0x3916
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x8c191; bits[16]:0xbded
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x330c3; bits[16]:0x65e0
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0xa56f7; bits[16]:0xb6d2
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x18471; bits[16]:0x8
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0x10000; bits[16]:0x70db
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x2369e; bits[16]:0x81bf
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0xbffe6; bits[16]:0xc4e3
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0x92b2b; bits[16]:0x329c
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0x819f6; bits[16]:0x87ac
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0x5ff51; bits[16]:0xf52d
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0xa8622; bits[16]:0xa4d0
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x97ed8; bits[16]:0x737c
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x2ab8b; bits[16]:0x867b
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0xedb15; bits[16]:0xcb8b
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0x42d35; bits[16]:0x3738
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0xa0f32; bits[16]:0xc436
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x4b854; bits[16]:0xf787
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x999e9; bits[16]:0x7d4c
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x2000; bits[16]:0xdfc9
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0x932df; bits[16]:0x2bf3
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0x603ef; bits[16]:0x330b
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x10; bits[16]:0x3330
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0xddab3; bits[16]:0x0
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x98dfd; bits[16]:0x2a00
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0x5b0f5; bits[16]:0x5f2a
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0xef26; bits[16]:0xc7f3
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0xabf70; bits[16]:0x4796
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0xa0a86; bits[16]:0x1
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0xd2271; bits[16]:0x1331
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x7e078; bits[16]:0x86cf
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0xfd404; bits[16]:0x100
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x800; bits[16]:0x7fff
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0xab136; bits[16]:0xdbce
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x80000; bits[16]:0x2e6b
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0xf75a0; bits[16]:0x5c7
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0x99daa; bits[16]:0x99cd
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x98b2f; bits[16]:0xcf24
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x80; bits[16]:0x298f
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x47683; bits[16]:0x7273
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0xc0026; bits[16]:0xb75b
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0x88134; bits[16]:0x32c4
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x2000; bits[16]:0xa4ec
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0x1f73b; bits[16]:0x156c
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x9aae9; bits[16]:0x26d8
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0xdfcba; bits[16]:0x5333
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x200; bits[16]:0xd7ad
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0xbd03b; bits[16]:0x400
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0xa96d0; bits[16]:0xb10c
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0x400; bits[16]:0x82d6
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x80000; bits[16]:0xfdb2
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0xad7c2; bits[16]:0x2936
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x4a61; bits[16]:0xa6f5
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0xf52e4; bits[16]:0x9f67
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0xf960b; bits[16]:0x728
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0xca646; bits[16]:0xdb25
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0x4786d; bits[16]:0xb80e
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0x990c5; bits[16]:0x563d
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0x938da; bits[16]:0xcfff
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x400; bits[16]:0x495c
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0x27679; bits[16]:0xbb30
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x7143f; bits[16]:0x10
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0xcb84; bits[16]:0x82a
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0xa5d1c; bits[16]:0x2
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0xc7e53; bits[16]:0xcb67
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0x1000; bits[16]:0x987a
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0xde111; bits[16]:0xd54d
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x30734; bits[16]:0x60a5
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0x5cdf4; bits[16]:0x2345
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x63910; bits[16]:0x14d0
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0x44793; bits[16]:0x7c61
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x4000; bits[16]:0xe65c
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0xe45fb; bits[16]:0x50d2
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x8ccee; bits[16]:0x10c2
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0x56a1a; bits[16]:0xbf3e
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0x4d112; bits[16]:0xc280
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0xc81d; bits[16]:0x83aa
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0x37ffa; bits[16]:0x2
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0xcc23b; bits[16]:0xaaaa
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0xfe562; bits[16]:0x0
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0xb4969; bits[16]:0xa40a
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0x922df; bits[16]:0x1c4c
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x100; bits[16]:0x24e7
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0xc5190; bits[16]:0xcfd3
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x6a0f9; bits[16]:0x2819
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0xb36f0; bits[16]:0x4808
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0x55d; bits[16]:0xae10
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0xd19d1; bits[16]:0x1dd8
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0x3587a; bits[16]:0x38ca
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0xb07a6; bits[16]:0xb937
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x1a4de; bits[16]:0x369
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0xa3637; bits[16]:0x6dec
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x722a5; bits[16]:0x4eca
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0x33ec8; bits[16]:0x3aeb
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0xc10a6; bits[16]:0x3a7e
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0xb69ba; bits[16]:0x7ff1
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0xbe63; bits[16]:0xe0f8
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0xbb5f8; bits[16]:0x7cf3
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0x802a7; bits[16]:0x7fff
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x100; bits[16]:0xbc77
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x8c49b; bits[16]:0xa1de
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x90b1c; bits[16]:0x455a
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0x4; bits[16]:0xfb0d
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x8b809; bits[16]:0xc011
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0xb7aac; bits[16]:0xebd4
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0xcd2ef; bits[16]:0x9be9
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0x7395b; bits[16]:0xd167
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0xe608d; bits[16]:0x11bd
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x775a9; bits[16]:0x7fff
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0xca46e; bits[16]:0x2857
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0xab720; bits[16]:0x3245
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x9a16a; bits[16]:0x959b
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0x923c5; bits[16]:0xa96f
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0xd82ee; bits[16]:0x303f
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x48217; bits[16]:0x80c4
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0xdc52a; bits[16]:0x7fff
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0xd518c; bits[16]:0x800
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x5819a; bits[16]:0x4766
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0x1904d; bits[16]:0xc430
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0xccc22; bits[16]:0x2
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0x41dff; bits[16]:0xd88
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x4632c; bits[16]:0xcf2f
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0xa9e6; bits[16]:0x8459
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x75fb3; bits[16]:0xffff
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x2a357; bits[16]:0x91a2
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0xf3b4d; bits[16]:0x2f9a
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0xd9455; bits[16]:0x8497
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x320ba; bits[16]:0x3734
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0xf6e30; bits[16]:0xee98
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x200; bits[16]:0xd058
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x8f9b1; bits[16]:0x4875
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0xe86de; bits[16]:0x8310
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0xaaaaa; bits[16]:0x20aa
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0xece1c; bits[16]:0x6b14
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x690c1; bits[16]:0xeac7
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0xaaaaa; bits[16]:0xc65a
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0x8786a; bits[16]:0xefe9
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0x9ff8b; bits[16]:0x8cee
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0x80000; bits[16]:0x933e
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0x8590c; bits[16]:0x7fa1
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0x5bf2a; bits[16]:0xfe33
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0xe9ad4; bits[16]:0x7a02
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0x971cd; bits[16]:0xbb48
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0x4f6e6; bits[16]:0x62a2
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0x59318; bits[16]:0xd99d
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0x1688e; bits[16]:0x516c
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0xd63e9; bits[16]:0x87ed
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0xdf763; bits[16]:0x4
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0xdcea2; bits[16]:0xc0f2
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0x40; bits[16]:0x8d7f
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0xdf9ea; bits[16]:0x27c4
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0xf25ed; bits[16]:0xa531
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0xbc274; bits[16]:0x7dc9
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0xb6672; bits[16]:0xc6c8
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0x8f7f9; bits[16]:0x867f
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0xe7275; bits[16]:0xebaa
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0xbd6ab; bits[16]:0xaaac
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x20; bits[16]:0x45ff
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0x8eeb8; bits[16]:0x8
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0xaaaaa; bits[16]:0x7853
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0x4f3f2; bits[16]:0x30df
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0x5547a; bits[16]:0xa99f
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0xff556; bits[16]:0x3c59
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0xef671; bits[16]:0x8029
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0xb875c; bits[16]:0x321
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0x2; bits[16]:0x2749
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x9070b; bits[16]:0xe658
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x92d5b; bits[16]:0x3c2b
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x4; bits[16]:0x9ad0
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0xc354b; bits[16]:0x1928
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0xd6fc3; bits[16]:0x3df4
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0x688cb; bits[16]:0x200
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0x40b73; bits[16]:0xc15a
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x20; bits[16]:0x896b
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0xb21fb; bits[16]:0xd95f
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0xb8861; bits[16]:0xedcd
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0xd1cb0; bits[16]:0x64b6
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0xd5d13; bits[16]:0x5fd8
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0xc3a8e; bits[16]:0x55d2
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0xc5da2; bits[16]:0xe39d
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0xc8ff1; bits[16]:0x2a5b
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x38cc3; bits[16]:0x80
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x890b9; bits[16]:0x5621
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0xe86b4; bits[16]:0x5332
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x54190; bits[16]:0x7838
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0x1d689; bits[16]:0x3d28
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0x110f9; bits[16]:0x79e3
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0xf554b; bits[16]:0x57ad
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0x1eb51; bits[16]:0x15ce
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0xa4b21; bits[16]:0xb047
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0x297a6; bits[16]:0xbee5
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x2fba1; bits[16]:0xedb4
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0xffd1c; bits[16]:0x7afd
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x7a076; bits[16]:0x5f7e
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0x806e9; bits[16]:0x2115
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x2ce85; bits[16]:0xd090
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0x5136; bits[16]:0xdceb
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0xadbc3; bits[16]:0x317b
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0xccc39; bits[16]:0x3ca5
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x4cba9; bits[16]:0x2105
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x10d91; bits[16]:0xd8f5
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0x32376; bits[16]:0xf229
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0xb4dbe; bits[16]:0x36fa
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0x9fcf6; bits[16]:0xe7a5
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0x8bdb3; bits[16]:0x8f56
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x1d5e1; bits[16]:0x7755
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0x455b5; bits[16]:0xb4c5
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0xf72a5; bits[16]:0x7e65
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0xbf58d; bits[16]:0x8613
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x1; bits[16]:0x5555
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0x2eb92; bits[16]:0xf3f4
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0xb7f6f; bits[16]:0xe2f4
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0x64ee0; bits[16]:0x85c6
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0xac113; bits[16]:0x7ddb
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0xd0120; bits[16]:0xa40c
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0x1af9f; bits[16]:0x4578
// args: bits[1]:0x1; bits[1]:0x1; bits[20]:0x318c7; bits[16]:0x95c6
// args: bits[1]:0x0; bits[1]:0x1; bits[20]:0x802c1; bits[16]:0x420b
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0xfde67; bits[16]:0xe9d0
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0xcce15; bits[16]:0xc905
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x45ec3; bits[16]:0xc135
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0xf4d74; bits[16]:0xc9f8
// args: bits[1]:0x0; bits[1]:0x0; bits[20]:0xc3b6; bits[16]:0xf5e3
// args: bits[1]:0x1; bits[1]:0x0; bits[20]:0x6d540; bits[16]:0x2f9c
fn main(x1337: bool, x1338: u1, x1339: u20, x1340: u16) -> (bool, bool, u16, u16, u20, u1, bool, bool, u20, u20, u20) {
    let x1341: u16 = (x1340) >> (((u16:0x8)) if ((x1340) >= ((u16:0x8))) else (x1340));
    let x1342: u1 = !(x1338);
    let x1343: bool = -(x1337);
    let x1344: bool = ((x1338 as bool)) >> (((bool:0x0)) if ((x1343) >= ((bool:0x0))) else (x1343));
    let x1345: u20 = -(x1339);
    let x1346: u20 = !(x1339);
    let x1347: bool = (x1337) >> (((bool:0x0)) if (((x1346 as bool)) >= ((bool:0x0))) else ((x1346 as bool)));
    (x1347, x1347, x1340, x1340, x1346, x1342, x1337, x1344, x1345, x1346, x1339)
}



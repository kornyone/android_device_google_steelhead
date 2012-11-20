#!/bin/sh

# Copyright (C) 2011 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# start ics
# 223971 = ITL41D
# 228551 = ITL41F
# 236517 = IML70C
# 237179 = IML73
# 237867 = IML74B
# 238432 = IML74E
# 238649 = IML74G
# 239410 = IML74K
# 257829 = IMM30B
# 262866 = IMM30D
# 299849 = IMM76D
# 330937 = IMM76I
# end ics
# start jellybean
# 241580 = IRL89
# 241968 = IRM03
# 398337 = JRO03C
# end jellybean

BUILD=398337
DEVICE=phantasm
PRODUCT=tungsten
VERSION=jro03c
BOOTLOADER=primelc03
RADIO=i9250xxlf1

source ../../../common/generate-factory-images-common.sh

BUILD=398337
DEVICE=phantasm
PRODUCT=tungsten
VERSION=jro03c
BOOTLOADER=primelc03
RADIO=i9250xxlf1

source ../../../common/generate-factory-images-common.sh

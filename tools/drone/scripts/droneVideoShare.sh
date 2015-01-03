#!/bin/sh
#
# Copyright 2014 Jules Cléro
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Allows to relaunch Parrot's internal program with the libDroneVideoSharing in preload
# to catch open, mmap and ioctl system calls

# Kill program.elf running instance
kk &&

# Relaunch it with the system call catching library
LD_PRELOAD=/libDroneVideoSharing.so /bin/program.elf.respawner.sh
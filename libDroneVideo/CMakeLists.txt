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

### libDroneVideo ###
find_package(OpenCV COMPONENTS core imgproc REQUIRED)
find_package(Threads REQUIRED)

include_directories(
    include/
    ${PROJECT_SOURCE_DIR}/libDroneVideoSharing/include/)

add_library(
    DroneVideo
    src/FrameGrabber.cpp)

target_link_libraries(DroneVideo ${OpenCV_LIBS} ${CMAKE_THREAD_LIBS_INIT})

set(Boost_USE_STATIC_LIBS ON)
find_package(Boost COMPONENTS log thread system REQUIRED)

add_executable(
    VideoTest
    test/VideoTest.cpp)

target_link_libraries(VideoTest DroneVideo ${Boost_LIBRARIES} ${CMAKE_THREAD_LIBS_INIT})

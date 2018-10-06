# Copyright (c) 2016-2017, Ruslan Baratov
# Copyright (c) 2017, David Hirvonen
# All rights reserved.

if(DEFINED POLLY_GCC_7_CXX14_CMAKE_)
  return()
else()
  set(POLLY_GCC_7_CXX14_CMAKE_ 1)
endif()

include("${CMAKE_CURRENT_LIST_DIR}/utilities/polly_init.cmake")

# Don't use polly_init (no generator expected)
set(POLLY_TOOLCHAIN_NAME "gcc 7 / c++14 support")
set(POLLY_TOOLCHAIN_TAG "gcc-7-cxx14")

include("${CMAKE_CURRENT_LIST_DIR}/utilities/polly_common.cmake")

include("${CMAKE_CURRENT_LIST_DIR}/compiler/gcc-7.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/flags/cxx14.cmake")

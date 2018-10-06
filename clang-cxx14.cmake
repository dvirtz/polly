# Copyright (c) 2016-2018, Ruslan Baratov
# Copyright (c) 2017, David Hirvonen
# All rights reserved.

if(DEFINED POLLY_CLANG_CXX14_CMAKE_)
  return()
else()
  set(POLLY_CLANG_CXX14_CMAKE_ 1)
endif()

include("${CMAKE_CURRENT_LIST_DIR}/utilities/polly_init.cmake")

# Don't use polly_init (no generator expected)
set(POLLY_TOOLCHAIN_NAME "clang / c++14 support")
set(POLLY_TOOLCHAIN_TAG "clang-cxx14")

include("${CMAKE_CURRENT_LIST_DIR}/utilities/polly_common.cmake")

include("${CMAKE_CURRENT_LIST_DIR}/compiler/clang.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/flags/cxx14.cmake")

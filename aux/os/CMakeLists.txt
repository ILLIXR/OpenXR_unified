# Copyright 2019-2022, Collabora, Ltd.
# SPDX-License-Identifier: BSL-1.0

####
# Main os library
#
# Avoid linking with libraries that brings in DSOs as this
# library is used everywhere. Including libraries loaded in
# by applications like the OpenXR runtime library.
#

add_library(
	aux_os STATIC
	os_documentation.h
	os_hid.h
	os_hid_hidraw.c
	os_threading.h
	os_time.cpp
	)
target_link_libraries(aux_os PUBLIC aux-includes xrt-pthreads)

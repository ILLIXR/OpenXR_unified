# Copyright 2019-2024, Collabora, Ltd.
# SPDX-License-Identifier: BSL-1.0

###
# Client library
#
set(THREADS_PREFERS_PTHREAD_FLAG ON)
find_package(Threads)
add_compile_definitions(XRT_BUILD_DRIVER_ILLIXR)

add_library(comp_client STATIC)

target_link_libraries(
	comp_client
	PUBLIC xrt-interfaces
	PRIVATE aux_util
	)
target_link_libraries(comp_client PUBLIC Threads::Threads)

target_include_directories(comp_client PRIVATE ${CMAKE_CURRENT_SOURCE_DIR})

target_sources(
		comp_client PRIVATE client/comp_vk_client.c client/comp_vk_client.h
		client/comp_vk_glue.c
)
target_link_libraries(comp_client PRIVATE aux_vk)

target_sources(
		comp_client
		PRIVATE client/comp_gl_client.c client/comp_gl_client.h
			client/comp_gl_memobj_swapchain.c client/comp_gl_memobj_swapchain.h
		)

target_sources(comp_client PRIVATE client/comp_gl_glue.c)

target_sources(comp_client PRIVATE client/comp_gles_glue.c)

target_sources(
		comp_client
		PRIVATE client/comp_gl_eglimage_swapchain.c client/comp_gl_eglimage_swapchain.h
			client/comp_egl_client.c client/comp_egl_client.h
		)

target_sources(
		comp_client PRIVATE client/comp_gl_xlib_client.c client/comp_gl_xlib_client.h
				    client/comp_gl_xlib_glue.c
		)
target_link_libraries(comp_client PRIVATE OpenGL::GLX xrt-external-glad aux_ogl)

# Copyright 2019-2022, Collabora, Ltd.
# SPDX-License-Identifier: BSL-1.0

###
# Main code
#
set(THREADS_PREFER_PTHREAD_FLAG ON)
find_package(Threads)
add_compile_definitions(XRT_BUILD_DRIVER_ILLIXR)

add_library(
	st_oxr STATIC
	oxr_api_action.c
	oxr_api_funcs.h
	oxr_api_instance.c
	oxr_api_session.c
	oxr_api_space.c
	oxr_api_swapchain.c
	oxr_api_system.c
	oxr_api_verify.h
	oxr_binding.c
	oxr_chain.h
	oxr_dpad.c
	oxr_event.c
	oxr_extension_support.h
	oxr_handle_base.c
	oxr_input.c
	oxr_input_transform.c
	oxr_input_transform.h
	oxr_instance.c
	oxr_logger.c
	oxr_logger.h
	oxr_objects.h
	oxr_path.c
	oxr_pretty_print.c
	oxr_pretty_print.h
	oxr_session.c
	oxr_session_frame_end.c
	oxr_space.c
	oxr_swapchain.c
	oxr_system.c
	oxr_two_call.h
	oxr_verify.c
	oxr_xdev.c
	)

target_compile_definitions(st_oxr PRIVATE XR_USE_GRAPHICS_API_VULKAN)
target_sources(st_oxr PRIVATE oxr_session_gfx_vk.c oxr_swapchain_vk.c oxr_vulkan.c)
target_link_libraries(st_oxr PUBLIC Vulkan::Vulkan)
target_link_libraries(st_oxr PUBLIC Threads::Threads)

target_compile_definitions(st_oxr PRIVATE XR_USE_GRAPHICS_API_OPENGL)
target_compile_definitions(st_oxr PRIVATE XR_USE_GRAPHICS_API_OPENGL_ES)

target_sources(st_oxr PRIVATE oxr_swapchain_gl.c)

target_compile_definitions(st_oxr PRIVATE XR_USE_PLATFORM_XLIB)
target_sources(st_oxr PRIVATE oxr_session_gfx_gl_xlib.c)

target_compile_definitions(st_oxr PRIVATE XR_USE_PLATFORM_EGL)
target_sources(st_oxr PRIVATE oxr_session_gfx_egl.c)

target_link_libraries(
	st_oxr
	PRIVATE
		xrt-interfaces
		aux_util
		aux_math
		aux_generated_bindings
		comp_client
		aux-includes
	PUBLIC aux_os
	)

target_link_libraries(st_oxr PUBLIC xrt-external-renderdoc)
target_link_libraries(st_oxr PRIVATE ${CMAKE_DL_LIBS})

target_include_directories(
	st_oxr
	PRIVATE ${CMAKE_CURRENT_BINARY_DIR}
	INTERFACE ${CMAKE_CURRENT_SOURCE_DIR}/..
	)

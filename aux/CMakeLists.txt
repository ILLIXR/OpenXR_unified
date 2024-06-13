add_library(aux-includes INTERFACE)
target_include_directories(
	aux-includes INTERFACE ${CMAKE_CURRENT_SOURCE_DIR} ${CMAKE_CURRENT_BINARY_DIR}
	)
target_link_libraries(aux-includes INTERFACE xrt-interfaces)


# Bindings library.
add_subdirectory(bindings)

# OpenGL library.
if(XRT_HAVE_OPENGL OR XRT_HAVE_OPENGLES)
	add_subdirectory(ogl)
endif()

# Math library.
add_subdirectory(math)

# OS library.
add_subdirectory(os)
# Util library.
add_subdirectory(util)
add_subdirectory(vk)

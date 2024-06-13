# Copyright 2019, Collabora, Ltd.
# SPDX-License-Identifier: BSL-1.0

######
# Create a loadable OpenXR driver.

set(RUNTIME_SUFFIX _test)

set(RUNTIME_TARGET
    openxr${RUNTIME_SUFFIX}
    CACHE INTERNAL "" FORCE
	)

# OpenXR 1.0
set(XR_API_MAJOR "1")
add_library(${RUNTIME_TARGET} SHARED target.c libopenxr.def)

# Note: Order may matter in these lists!
target_link_libraries(${RUNTIME_TARGET} PUBLIC aux_vk aux_os aux_util aux_math)

target_link_libraries(${RUNTIME_TARGET} PUBLIC st_oxr ipc_client comp_client)

# Force the main "negotiate" symbol's inclusion
# and use a version script to ensure that's the only one we expose.
set_property(
		TARGET ${RUNTIME_TARGET}
		APPEND_STRING
		PROPERTY
			LINK_FLAGS
			"-u xrNegotiateLoaderRuntimeInterface -Wl,--version-script=${CMAKE_CURRENT_SOURCE_DIR}/libopenxr.version"
		)
# Re-link if the version script changes.
set_property(
		TARGET ${RUNTIME_TARGET}
		APPEND
		PROPERTY LINK_DEPENDS "${CMAKE_CURRENT_SOURCE_DIR}/libopenxr.version"
		)

###
# Generate runtime manifest with absolute path to runtime intended for development without installing

# 3.9+ have a global property with the truth
get_property(IS_MULTI_CONFIG GLOBAL PROPERTY GENERATOR_IS_MULTI_CONFIG)

if(IS_MULTI_CONFIG)
	set(DEV_MANIFEST_OUTPUT "${CMAKE_BINARY_DIR}/$<CONFIG>/${RUNTIME_TARGET}-dev.json")
else()
	set(DEV_MANIFEST_OUTPUT "${CMAKE_BINARY_DIR}/${RUNTIME_TARGET}-dev.json")
endif()

include(GenerateOpenXRRuntimeManifest)
generate_openxr_runtime_manifest_buildtree(
	RUNTIME_TARGET ${RUNTIME_TARGET} #
	OUT_FILE ${DEV_MANIFEST_OUTPUT}
	)

# Linux, BSD, etc.
set(MANIFEST_RELATIVE_DIR share/openxr/${XR_API_MAJOR}/)

set(_extra_args)
if(XRT_OPENXR_INSTALL_ABSOLUTE_RUNTIME_PATH)
	set(_extra_args ABSOLUTE_RUNTIME_PATH)
elseif(XRT_OPENXR_INSTALL_MANIFEST_RELATIVE_RUNTIME_PATH)
	set(_extra_args RUNTIME_DIR_RELATIVE_TO_MANIFEST ../../../${CMAKE_INSTALL_LIBDIR})
endif()
generate_openxr_runtime_manifest_at_install(
		${_extra_args}
		RUNTIME_TARGET ${RUNTIME_TARGET}
		DESTINATION share/openxr/${XR_API_MAJOR}
		RELATIVE_RUNTIME_DIR ${CMAKE_INSTALL_LIBDIR}
)
install(
		TARGETS ${RUNTIME_TARGET} #
		LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR} COMPONENT Runtime
		RUNTIME DESTINATION ${CMAKE_INSTALL_LIBDIR} COMPONENT Runtime
)

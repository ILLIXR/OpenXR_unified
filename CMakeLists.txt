cmake_minimum_required(VERSION 3.0)
project(
        openxr-unified
        VERSION 21.0.0
        LANGUAGES C CXX
        DESCRIPTION "Monado test"
)
set(GIT_DESC "v21.0.0-4472-gd62fee9b5")
if (POLICY CMP0072)
  cmake_policy (SET CMP0072 NEW)
endif(POLICY CMP0072)

IF (WIN32)
	SET(EXTRA_INCLUDES "${CMAKE_SOURCE_DIR}" "${CMAKE_SOURCE_DIR}/GL")
ENDIF()

find_package(OpenGL REQUIRED)

INCLUDE(FindPkgConfig)
PKG_SEARCH_MODULE(SDL2 REQUIRED sdl2)

find_package(X11 REQUIRED)
SET(LINUX_LIBS "Xrandr ${X11_LIBRARIES}" m)
set(XRT_HAVE_XLIB True)
list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake")

set(Python_ADDITIONAL_VERSIONS 3.8 3.9)
if(NOT CMAKE_VERSION VERSION_LESS 3.12)
    find_package(Python3 REQUIRED Interpreter)
    set(PYTHON_EXECUTABLE Python3::Interpreter)
else()
    find_program(PYTHON_EXECUTABLE python3)
    if(PYTHON_EXECUTABLE MATCHES "WindowsApps")
        # If you receive this error, you will have to install Python 3 or try harder to tell CMake where it is.
        message(
                FATAL_ERROR
                "Found WindowsApps alias for Python. Make sure Python3 is installed, then choose 'Manage App Execution Aliases' in Start and disable the aliases for Python."
        )
    endif()
endif()


find_package(cJSON MODULE)
find_package(Systemd MODULE)
find_package(OpenGLES MODULE COMPONENTS V3)
find_library(RT_LIBRARY rt)
find_package(EGL MODULE)
find_package(Eigen3 3)
find_package(Vulkan MODULE)
find_package(OpenGL)
find_package(PkgConfig MODULE)
find_package(X11)
find_package(udev REQUIRED)
find_package(HIDAPI MODULE)
find_package(JPEG MODULE)
find_package(Libusb1 MODULE)
find_package(OpenGL COMPONENTS GLX)
set(XRT_HAVE_OPENGL_GLX ${OpenGL_GLX_FOUND})
find_package(
	OpenCV
	COMPONENTS
		core
		calib3d
		highgui
		imgproc
		imgcodecs
		features2d
		video
		CONFIG
	)
include_directories(${OpenCV_INCLUDE_DIRS})

pkg_check_modules(XRANDR xrandr)
pkg_check_modules(XCB xcb xcb-randr x11-xcb)
pkg_search_module(WAYLAND wayland-client)
pkg_search_module(WAYLAND_SCANNER wayland-scanner)
pkg_search_module(WAYLAND_PROTOCOLS wayland-protocols)
pkg_search_module(LIBDRM IMPORTED_TARGET libdrm)
pkg_search_module(DBUS dbus-1)
pkg_check_modules(GST gstreamer-1.0 gstreamer-app-1.0 gstreamer-video-1.0)
pkg_check_modules(SURVIVE IMPORTED_TARGET survive)
pkg_check_modules(LIBUVC libuvc)
find_library(OPENVR_LIBRARIES NAMES openvr_api)
set(XRT_HAVE_DBUS ON)
set(XRT_HAVE_EGL ON)
set(XRT_HAVE_GST ON)
set(XRT_HAVE_HIDAPI ON)
set(XRT_HAVE_JPEG ON)
set(XRT_HAVE_LIBUDEV ON)
set(XRT_HAVE_LIBUSB ON)
set(XRT_HAVE_LIBUVC ON)
set(XRT_HAVE_OPENCV ON)
set(XRT_HAVE_OPENGL ON)
set(XRT_HAVE_OPENGLES ON)
set(XRT_HAVE_OPENVR ON)
set(XRT_HAVE_SYSTEMD ON)
set(XRT_HAVE_VULKAN ON)
set(XRT_HAVE_WAYLAND ON)
set(XRT_HAVE_WAYLAND_DIRECT ON)

set(XRT_MODULE_AUX_VIVE ON)
set(XRT_MODULE_COMPOSITOR ON)
set(XRT_MODULE_COMPOSITOR_MAIN ON)
set(XRT_MODULE_COMPOSITOR_NULL ON)
set(XRT_MODULE_IPC ON)
set(XRT_MODULE_MONADO_CLI ON)
set(XRT_FEATURE_COLOR_LOG ON)
set(XRT_FEATURE_OPENXR ON)
set(XRT_FEATURE_OPENXR_DISPLAY_REFRESH_RATE ON)
set(XRT_FEATURE_OPENXR_FORCE_FEEDBACK_CURL ON)
set(XRT_FEATURE_OPENXR_HEADLESS ON)
set(XRT_FEATURE_OPENXR_INTERACTION_EXT_EYE_GAZE ON)
set(XRT_FEATURE_OPENXR_INTERACTION_EXT_HAND ON)
set(XRT_FEATURE_OPENXR_INTERACTION_ML2 ON)
set(XRT_FEATURE_OPENXR_INTERACTION_MNDX ON)
set(XRT_FEATURE_OPENXR_INTERACTION_OPPO ON)
set(XRT_FEATURE_OPENXR_INTERACTION_WINMR ON)
set(XRT_FEATURE_OPENXR_LAYER_CYLINDER ON)
set(XRT_FEATURE_OPENXR_LAYER_DEPTH ON)
set(XRT_FEATURE_OPENXR_LAYER_EQUIRECT2 ON)
set(XRT_FEATURE_OPENXR_LAYER_FB_IMAGE_LAYOUT ON)
set(XRT_FEATURE_OPENXR_OVERLAY ON)
set(XRT_FEATURE_OPENXR_SPACE_LOCAL_FLOOR ON)
set(XRT_FEATURE_OPENXR_SPACE_UNBOUNDED ON)
set(XRT_FEATURE_OPENXR_VISIBILITY_MASK ON)
set(XRT_FEATURE_OPENXR_VULKAN_SWAPCHAIN_FORMAT_LIST ON)
set(XRT_FEATURE_RENDERDOC ON)
set(XRT_FEATURE_SERVICE ON)
set(XRT_FEATURE_SERVICE_SYSTEMD ON)
set(XRT_FEATURE_SLAM ON)
set(XRT_FEATURE_SSE2 ON)
set(XRT_FEATURE_STEAMVR_PLUGIN ON)
set(XRT_HAVE_INTERNAL_HID ON)
set(XRT_IPC_MSG_SOCK_FILENAME "monado_comp_ipc")
set(XRT_IPC_SERVICE_PID_FILENAME "monado.pid")
set(XRT_BUILD_DRIVER_SIMULATED ON)
set(XRT_BUILD_DRIVER_ILLIXR ON)
set(XRT_BUILD_DRIVER_PSSENSE ON)
set(XRT_BUILD_DRIVER_ROKID ON)
set(XRT_BUILD_DRIVER_TWRAP ON)
set(XRT_BUILD_DRIVER_XREAL_AIR ON)
set(VK_USE_PLATFORM_WAYLAND_KHR ON)
set(VK_USE_PLATFORM_XCB_KHR ON)
set(VK_USE_PLATFORM_XLIB_XRANDR_EXT ON)
set(VK_USE_PLATFORM_DISPLAY_KHR ON)
set(XRT_IPC_MSG_SOCK_FILENAME monado_comp_ipc CACHE STRING "Service socket filename")

if(XCB_FOUND)
    set(XRT_HAVE_XCB ON)
endif()

# Target used for applying more aggressive optimizations to math-heavy code
add_library(xrt-optimized-math INTERFACE)
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -pedantic -Wall -Wextra -Wno-unused-parameter -fPIC")
set(CMAKE_C_FLAGS
    "${CMAKE_C_FLAGS} -Werror-implicit-function-declaration -Werror=incompatible-pointer-types"
)
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Werror=int-conversion")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -pedantic -Wall -Wextra -Wno-unused-parameter -fPIC")

# Use effectively ubiquitous SSE2 instead of x87 floating point
# for increased reliability/consistency
if(CMAKE_SYSTEM_PROCESSOR MATCHES "[xX]86" AND XRT_FEATURE_SSE2)
    set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -msse2 -mfpmath=sse")
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -msse2 -mfpmath=sse")
endif()

target_compile_options(xrt-optimized-math INTERFACE $<IF:$<CONFIG:Debug>,-O2,-O3>)

# Even clang's gnu-style driver on windows doesn't accept this argument.

set(CMAKE_SHARED_LINKER_FLAGS "${CMAKE_SHARED_LINKER_FLAGS} -Wl,--no-undefined")
set(CMAKE_MODULE_LINKER_FLAGS "${CMAKE_MODULE_LINKER_FLAGS} -Wl,--no-undefined")

# Must call before adding targets that will use xrt-optimized-math
macro(xrt_optimized_math_flags)
    if(MSVC)
        foreach(
                FLAGSVAR
                CMAKE_CXX_FLAGS_DEBUG
                CMAKE_CXX_FLAGS_RELEASE
                CMAKE_CXX_FLAGS_RELWITHDEBINFO
                CMAKE_CXX_FLAGS_MINSIZEREL
                CMAKE_C_FLAGS_DEBUG
                CMAKE_C_FLAGS_RELEASE
                CMAKE_C_FLAGS_RELWITHDEBINFO
                CMAKE_C_FLAGS_MINSIZEREL
        )

            string(REPLACE "/Od" "" ${FLAGSVAR} "${${FLAGSVAR}}")
            string(REPLACE "/O1" "" ${FLAGSVAR} "${${FLAGSVAR}}")
            string(REPLACE "/O2" "" ${FLAGSVAR} "${${FLAGSVAR}}")
            string(REPLACE "/Ob1" "" ${FLAGSVAR} "${${FLAGSVAR}}")
            string(REPLACE "/Ob0" "" ${FLAGSVAR} "${${FLAGSVAR}}")
            string(REPLACE "/RTC1" "" ${FLAGSVAR} "${${FLAGSVAR}}")
        endforeach()
    endif()
endmacro()


add_library(xrt-pthreads INTERFACE)
set(CMAKE_THREAD_PREFER_PTHREAD ON)
find_package(Threads)
target_link_libraries(xrt-pthreads INTERFACE Threads::Threads)
target_compile_definitions(xrt-pthreads INTERFACE _GNU_SOURCE)

add_subdirectory(external)
add_subdirectory(include)
add_subdirectory(aux)
add_subdirectory(comp)
add_subdirectory(oxr)
add_subdirectory(ipc)
add_subdirectory(openxr_app)


add_executable(openxr-example main.c openxr_app/target.c)

# First try openxr.pc from OpenXR SDK
include(FindPkgConfig)
pkg_search_module(OPENXR openxr)
#if (OPENXR_FOUND)
#  MESSAGE("OpenXR found with pkg-config   ${OPENXR_LIBRARIES}")
#  target_link_libraries(openxr-example PRIVATE ${OPENXR_LIBRARIES})

# Second, try OpenXRConfig.cmake from OpenXR SDK
#else()
#  MESSAGE("OpenXR not found with pkg-config, trying cmake script")

  # current issue in upstream OpenXR cmake files requires us to find Threads on our own
  find_package(Threads REQUIRED)

#endif()

target_link_libraries(openxr-example PRIVATE ${LINUX_LIBS} ${OPENGL_LIBRARIES} ${SDL2_LIBRARIES} openxr_test)

target_link_libraries(openxr-example PUBLIC aux_vk aux_os aux_util aux_math)
target_link_libraries(openxr-example PUBLIC st_oxr ipc_client comp_client)
target_include_directories(openxr-example PRIVATE ${SDL2_INCLUDE_DIRS} ${EXTRA_INCLUDES} external)
if(MSVC)
  target_compile_options(openxr-example PRIVATE /W4 /WX)
else(MSVC)
  target_compile_options(openxr-example PRIVATE -Wno-pedantic -Wno-implicit-fallthrough -Wall -Wextra -Wno-unused-parameter)
endif(MSVC)


set_property(
        TARGET openxr-example
        APPEND_STRING
        PROPERTY
        LINK_FLAGS
        "-Wl,--version-script=${CMAKE_CURRENT_SOURCE_DIR}/openxr_app/libopenxr.version"
)
install(TARGETS openxr-example RUNTIME DESTINATION bin)

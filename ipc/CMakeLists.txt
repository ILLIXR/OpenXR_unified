# Copyright 2020-2021, Collabora, Ltd.
# SPDX-License-Identifier: BSL-1.0

###
# Generator

foreach(
	fn
	ipc_protocol_generated.h
	ipc_client_generated.h
	ipc_client_generated.c
	ipc_server_generated.h
	ipc_server_generated.c
	)
	add_custom_command(
		OUTPUT "${CMAKE_CURRENT_BINARY_DIR}/${fn}"
		COMMAND
			${PYTHON_EXECUTABLE} ${CMAKE_CURRENT_SOURCE_DIR}/shared/proto.py
			${CMAKE_CURRENT_SOURCE_DIR}/shared/proto.json
			"${CMAKE_CURRENT_BINARY_DIR}/${fn}"
		VERBATIM
		DEPENDS
			${CMAKE_CURRENT_SOURCE_DIR}/shared/proto.py
			${CMAKE_CURRENT_SOURCE_DIR}/shared/ipcproto/common.py
			${CMAKE_CURRENT_SOURCE_DIR}/shared/proto.json
		COMMENT "Generating ${fn} from protocol JSON description"
		)
endforeach()

set(IPC_COMMON_SOURCES
    ${CMAKE_CURRENT_BINARY_DIR}/ipc_protocol_generated.h
    shared/ipc_message_channel.h
    shared/ipc_shmem.c
    shared/ipc_shmem.h
    shared/ipc_utils.c
    shared/ipc_utils.h
	)

add_library(ipc_shared STATIC ${IPC_COMMON_SOURCES})
target_include_directories(
	ipc_shared PUBLIC ${CMAKE_CURRENT_SOURCE_DIR} ${CMAKE_CURRENT_BINARY_DIR}
	)

target_sources(ipc_shared PRIVATE shared/ipc_message_channel_unix.c)

target_link_libraries(ipc_shared PRIVATE aux_util)

target_link_libraries(ipc_shared PUBLIC ${RT_LIBRARY})

###
# Client

add_library(
	ipc_client STATIC
	${CMAKE_CURRENT_BINARY_DIR}/ipc_client_generated.c
	${CMAKE_CURRENT_BINARY_DIR}/ipc_client_generated.h
	client/ipc_client.h
	client/ipc_client_compositor.c
	client/ipc_client_connection.c
	client/ipc_client_device.c
	client/ipc_client_hmd.c
	client/ipc_client_instance.c
	client/ipc_client_session.c
	client/ipc_client_space_overseer.c
	client/ipc_client_system.c
	client/ipc_client_system_devices.c
	)
target_include_directories(
	ipc_client PUBLIC ${CMAKE_CURRENT_SOURCE_DIR} ${CMAKE_CURRENT_BINARY_DIR}
	)
target_link_libraries(ipc_client PRIVATE aux_util ipc_shared)

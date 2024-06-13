# Glad
add_library(xrt-external-glad INTERFACE)
target_include_directories(
        xrt-external-glad SYSTEM INTERFACE ${CMAKE_CURRENT_SOURCE_DIR}/glad/include
)
# Nano Protobuf
add_library(
        xrt-external-nanopb STATIC
        nanopb/monado_metrics.pb.c
        nanopb/monado_metrics.pb.h
        nanopb/pb.h
        nanopb/pb_common.c
        nanopb/pb_common.h
        nanopb/pb_decode.c
        nanopb/pb_decode.h
        nanopb/pb_encode.c
        nanopb/pb_encode.h
)
target_include_directories(xrt-external-nanopb PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/nanopb)

# renderdoc
add_library(xrt-external-renderdoc INTERFACE)
target_include_directories(
        xrt-external-renderdoc SYSTEM INTERFACE ${CMAKE_CURRENT_SOURCE_DIR}/renderdoc_api
)


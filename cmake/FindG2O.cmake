set(G2O_INCLUDE_DIRS
    "${CMAKE_SOURCE_DIR}/external/g2o"
    "${CMAKE_SOURCE_DIR}/external/g2o/EXTERNAL/ceres"
    "${CMAKE_SOURCE_DIR}/external/g2o/EXTERNAL/csparse"
    "${CMAKE_SOURCE_DIR}/external/g2o/EXTERNAL/freeglut"
    "${CMAKE_BINARY_DIR}/external/g2o"
)
file(GLOB G2O_LIBRARIES "${CMAKE_SOURCE_DIR}/external/g2o/lib/*")

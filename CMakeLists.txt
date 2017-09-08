cmake_minimum_required(VERSION 3.1)

project(ElasticReconstruction)

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/cmake/")
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/bin")

set(CMAKE_CXX_STANDARD 11)

option(BUILD_GLOBAL_REGISTRATION  "Build GlobalRegistration module"  ON)
option(BUILD_GRAPH_OPTIMIZER      "Build GraphOptimizer module"      ON)
option(BUILD_BUILD_CORRESPONDENCE "Build BuildCorrespondence module" ON)
option(BUILD_FRAGMENT_OPTIMIZER   "Build FragmentOptimizer module"   ON)
option(BUILD_INTEGRATE            "Build Integrate module"           ON)

find_package(PCL 1.7 REQUIRED)
find_package(Eigen3 REQUIRED)
find_package(Boost 1.49 REQUIRED COMPONENTS filesystem program_options)
find_package(OpenMP REQUIRED)
if (OPENMP_FOUND)
    set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${OpenMP_C_FLAGS}")
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${OpenMP_CXX_FLAGS}")
    set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} ${OpenMP_EXE_LINKER_FLAGS}")
endif()

if (BUILD_GLOBAL_REGISTRATION)
    add_subdirectory(GlobalRegistration)
endif()

if (BUILD_GRAPH_OPTIMIZER)
    add_subdirectory(GraphOptimizer)
endif()

if (BUILD_BUILD_CORRESPONDENCE)
    add_subdirectory(BuildCorrespondence)
endif()

if (BUILD_FRAGMENT_OPTIMIZER)
    add_subdirectory(FragmentOptimizer)
endif()

if (BUILD_INTEGRATE)
    add_subdirectory(Integrate)
endif()

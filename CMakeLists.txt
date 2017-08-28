cmake_minimum_required(VERSION 3.1)

project(ElasticReconstruction)

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/cmake/")

include(BuildG2O)

set(CMAKE_CXX_STANDARD 11)

find_package(PCL 1.7 REQUIRED)
find_package(Eigen3 REQUIRED)
find_package(Boost 1.49 REQUIRED COMPONENTS filesystem program_options)
find_package(SuiteSparse REQUIRED)
find_package(OpenMP REQUIRED)
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${OpenMP_C_FLAGS}")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${OpenMP_CXX_FLAGS}")
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} ${OpenMP_EXE_LINKER_FLAGS}")

add_subdirectory(GlobalRegistration)
add_subdirectory(GraphOptimizer)
add_subdirectory(BuildCorrespondence)
add_subdirectory(FragmentOptimizer)
add_subdirectory(Integrate)

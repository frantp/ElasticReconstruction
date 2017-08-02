cmake_minimum_required(VERSION 3.1)

project(ElasticReconstruction)

add_subdirectory(external/g2o)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/cmake/")

find_package(PCL 1.7 REQUIRED)
find_package(Eigen3 REQUIRED)
find_package(Boost 1.49 REQUIRED COMPONENTS filesystem program_options)
find_package(SuiteSparse REQUIRED)
find_package(OpenMP REQUIRED)
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${OpenMP_C_FLAGS}")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${OpenMP_CXX_FLAGS}")
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} ${OpenMP_EXE_LINKER_FLAGS}")
find_package(G2O REQUIRED)

add_subdirectory(GlobalRegistration)
add_subdirectory(GraphOptimizer)
add_subdirectory(BuildCorrespondence)
add_subdirectory(FragmentOptimizer)
add_subdirectory(Integrate)

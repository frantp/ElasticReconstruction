cmake_minimum_required(VERSION 3.1)

project(FragmentOptimizer)

include_directories(
    ${PCL_INCLUDE_DIRS}
    ${Eigen3_INCLUDE_DIRS}
    ${Boost_INCLUDE_DIRS}
    ${CHOLMOD_INCLUDE_DIR}
)

link_directories(
    ${PCL_LIBRARY_DIRS}
    ${Boost_LIBRARY_DIRS}
)

add_definitions(
    ${PCL_DEFINITIONS}
)

add_executable(FragmentOptimizer
    FragmentOptimizer.cpp
    OptApp.cpp
    PointCloud.cpp
    HashSparseMatrix.cpp
)

target_link_libraries(FragmentOptimizer
    ${PCL_LIBRARIES}
    ${Boost_LIBRARIES}
    ${CHOLMOD_LIBRARIES}
)

cmake_minimum_required(VERSION 3.1)

project(BuildCorrespondence)

include_directories(
    ${PCL_INCLUDE_DIRS}
    ${Eigen3_INCLUDE_DIRS}
    ${Boost_INCLUDE_DIRS}
)

link_directories(
    ${PCL_LIBRARY_DIRS}
    ${Boost_LIBRARY_DIRS}
)

add_definitions(
    ${PCL_DEFINITIONS}
)

add_executable(BuildCorrespondence
    BuildCorrespondence.cpp
    CorresApp.cpp
)

target_link_libraries(BuildCorrespondence
    ${PCL_LIBRARIES}
    ${Boost_LIBRARIES}
)

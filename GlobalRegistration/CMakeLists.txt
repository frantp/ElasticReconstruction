cmake_minimum_required(VERSION 3.1)

project(GlobalRegistration)

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

add_executable(GlobalRegistration
    GlobalRegistration.cpp
)

target_link_libraries(GlobalRegistration
    ${PCL_LIBRARIES}
    ${Boost_LIBRARIES}
)

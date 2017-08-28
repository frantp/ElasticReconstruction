cmake_minimum_required(VERSION 3.1)

project(GraphOptimizer)

include_directories(
    ${PCL_INCLUDE_DIRS}
    ${Eigen3_INCLUDE_DIRS}
    ${Boost_INCLUDE_DIRS}
    ${CSPARSE_INCLUDE_DIR}
    ${G2O_INCLUDE_DIRS}
)

link_directories(
    ${PCL_LIBRARY_DIRS}
    ${Boost_LIBRARY_DIRS}
)

add_definitions(
    ${PCL_DEFINITIONS}
)

add_executable(GraphOptimizer
    GraphOptimizer.cpp
    OptApp.cpp
    vertigo/edge_se3Switchable.cpp
    vertigo/edge_switchPrior.cpp
    vertigo/types_g2o_robust.cpp
    vertigo/vertex_switchLinear.cpp
)

add_dependencies(GraphOptimizer g2o)

target_link_libraries(GraphOptimizer
    ${PCL_LIBRARIES}
    ${Boost_LIBRARIES}
    ${CSPARSE_LIBRARY}
    ${G2O_LIBRARIES}
)

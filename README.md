# Robust Scene Reconstruction

This is a fork of https://github.com/qianyizh/ElasticReconstruction with the following goals:
- Change the build system to CMake
- Remove any Windows-specific call
- Remove any dependency on the custom fork of the PCL library

You should be able to build the software with a compiler with C++11 support on any system with the appropriate dependencies installed:
- PCL >= 1.7
- Eigen 3
- Boost >= 1.49
- OpenMP
- SuiteSparse

See [`README.txt`](README.txt) for the original instructions.

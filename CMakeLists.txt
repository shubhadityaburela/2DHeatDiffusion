cmake_minimum_required(VERSION 3.5)

project(AdjointHeatDiffusion LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

INCLUDE_DIRECTORIES(eigen-3.4.0/)
add_executable(AdjointHeatDiffusion main.cpp probleminput.cpp grid.cpp pdesolve.cpp EigenSolve.h Visualize.h)

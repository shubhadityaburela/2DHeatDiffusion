# 2DHeatDiffusion
Performs an implicit finite difference method on 2d heat diffusion problem for a unit square with Dirichlet and Thermally insulated boundary conditions. 

To run the code perform following:

git clone the project into a directory

1. `mkdir build`
2. `cd build`
3. `mkdir vtk`
4. `cmake ..`
5. `make`
6. `./2DHeatDiffusion`


This will create a vtk file in the vtk directory inside the build directory which can then be visualized

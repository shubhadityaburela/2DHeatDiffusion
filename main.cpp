#include <iostream>
#include <cstdio>
#include <fstream>
#include <cmath>
#include <cassert>
#include "probleminput.h"
#include "grid.h"
#include "pdesolve.h"
#include "Visualize.h"


int main()
{
    // Read the input file
    char *InputFile;
    InputFile = "../case_1.json";

    // Construct the Inputs
    ProblemInput Inputs(InputFile);

    // Construct the Grid
    Grid grid(Inputs);

    // Solve the PDE
    PdeSolve pdesolve(Inputs, grid);
    pdesolve.InitialCond(Inputs, grid);
    pdesolve.BoundCond(Inputs);

    std::vector<double> TComp;
    TComp = pdesolve.Solve(Inputs, grid);

    // Write the result in VTK file
    char *vtk;
    vtk = "./vtk/visualize";
    createVTK(TComp, TComp, Inputs.Nx, Inputs.Ny, 0, vtk);



    return 0;
}

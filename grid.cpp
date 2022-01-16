#include "grid.h"

Grid::Grid(ProblemInput& Inputs)
{
    int Nx = Inputs.Nx;
    int Ny = Inputs.Ny;
    for(int i=0; i < Nx*Ny; i++){
        X.push_back(double((i % Nx)) / (Nx - 1));
        Y.push_back(floor(i / Ny) / (Ny - 1));
    }

    dX = Inputs.Lx / (Nx - 1);
    dY = Inputs.Ly / (Ny - 1);
    dt = Inputs.tFinal / Inputs.NumTimeSteps;
}

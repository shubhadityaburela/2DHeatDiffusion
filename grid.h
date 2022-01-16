#ifndef GRID_H
#define GRID_H

#include <vector>
#include "probleminput.h"


class Grid
{
public:
    double dX, dY, dt; // grid spacings and the time step size
    std::vector<double> X, Y;  // X and Y coordinates of the grid points

    // Constructor
    Grid(ProblemInput&);
};

#endif // GRID_H

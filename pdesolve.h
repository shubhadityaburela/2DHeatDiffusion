#ifndef PDESOLVE_H
#define PDESOLVE_H

#include <vector>
#include "probleminput.h"
#include "grid.h"

class PdeSolve
{
public:
    std::vector<double> T; // Temperature
    std::vector<double> C; // Heat Conductivity
    std::vector<double> Q; // Heat Source

    // Constructor
    PdeSolve(ProblemInput&, Grid&);

    // Member functions
    void InitialCond(ProblemInput&, Grid&);
    void BoundCond(ProblemInput&);
    std::vector<double> Solve(ProblemInput&, Grid&);

    // Destructor
    ~PdeSolve(){};

private:
    int Nx, Ny;
    double dx, dy, dt;
    double rho, Cp;

    void GetA(std::vector<std::vector<double>>&);
    void Getb(std::vector<double>&, std::vector<double>&);
};

#endif // PDESOLVE_H

#include <algorithm>
#include <iostream>
#include <fstream>
#include <cstdio>
#include "pdesolve.h"
#include "probleminput.h"
#include "grid.h"
#include "EigenSolve.h"

PdeSolve::PdeSolve(ProblemInput& Inputs, Grid& grid)
{
    Nx = Inputs.Nx;
    Ny = Inputs.Ny;
    rho = Inputs.Density;
    Cp = Inputs.Cp;
    dx = grid.dX;
    dy = grid.dY;
    dt = grid.dt;

    // Initialize the vectors
    T.resize(Nx * Ny);
    C.resize(Nx * Ny);
    Q.resize(Nx * Ny);
}

void PdeSolve::InitialCond(ProblemInput& Inputs, Grid& grid)
{
    for(int i = 0; i < Nx * Ny; i++){

        // Temperature Initial conditions
        T[i] = Inputs.TInit;

        // Heat Source Initial Conditions
        if((grid.X[i] >= Inputs.HeatInput[1] && grid.X[i] <= Inputs.HeatInput[2]) &&
                (grid.Y[i] >= Inputs.HeatInput[3] && grid.Y[i] <= Inputs.HeatInput[4])){
            Q[i] = Inputs.HeatInput[0];
        }else{
            Q[i] = 0;
        }

        // Heat Conductivity Initial Conditions (Can be extended to heterogenous cases)
        if(Inputs.NumHetSec == 1){
            C[i] = Inputs.HeatCond[Inputs.NumHetSec - 1][0];
        }
    }
}

void PdeSolve::BoundCond(ProblemInput& Inputs)
{

    for(int i = 0; i < Nx * Ny; i++){
        // Temperature boundary conditions
        if(i % Nx == Nx - 1){
            T[i] = Inputs.TRight;
        }else if(i % Nx == 0){
            T[i] = Inputs.TLeft;
        }
        // Heat source boundary conditions
        if((i % Nx == Nx - 1) || (i % Nx == 0)){
            Q[i] = 0;
        }
    }
}


void PdeSolve::GetA(std::vector<std::vector<double>>& A)
{
    // The form of A = (I - dt * R)
    for(int i = 0; i < Nx * Ny; i++){
        if(i % Nx == 0)
            A[i][i] = 1.0;
        else if(i % Nx == Nx - 1)
            A[i][i] = 1.0;
        else{
            if((i - Nx) >= 0){
                A[i][i - Nx] = - dt * ((C[i] + C[i - Nx]) / 2 / pow(dy, 2));
            }else if((i - Nx) < 0){
                A[i][i + Nx] = -dt * ((C[i] + C[i + Nx]) / 2 / pow(dy, 2));  // Insulated boundary at the bottom
            }

            A[i][i - 1] = - dt * ((C[i] + C[i - 1]) / 2 / pow(dx, 2));

            if(i - Nx >=0 && i + Nx <= Nx * Ny)
                A[i][i] = 1.0 - dt * (-(C[i - 1] + 2 * C[i] + C[i + 1]) / 2 / pow(dx, 2) -
                    (C[i + Nx] + 2 * C[i] + C[i - Nx]) / 2 / pow(dy, 2));
            else if(i - Nx >= 0)
                A[i][i] = 1.0 - dt * (-(C[i - 1] + 2 * C[i] + C[i + 1]) / 2 / pow(dx, 2) -
                    (C[i] + C[i - Nx]) / 2 / pow(dy, 2));
            else if(i + Nx > Nx * Ny){
                A[i][i] = 1.0 - dt * (-(C[i - 1] + 2 * C[i] + C[i + 1]) / 2 / pow(dx, 2) -
                    (2 * C[i] + 2 * C[i - Nx]) / 2 / pow(dy, 2));  // Insulated boundary at the top
            }
            else
                A[i][i] = 1.0 - dt * (-(C[i - 1] + 2 * C[i] + C[i + 1]) / 2 / pow(dx, 2) -
                    (2 * C[i + Nx] + 2 * C[i]) / 2 / pow(dy, 2)); // Insulated boundary at the bottom

            A[i][i + 1] = - dt * ((C[i] + C[i + 1]) / 2 / pow(dx, 2));

            if((i + Nx) <= (Nx * Ny))
                A[i][i + Nx] = - dt * ((C[i] + C[i + Nx]) / 2 / pow(dy, 2));
            else if(i + Nx > Nx * Ny){
                A[i][i - Nx] = -dt * ((C[i] + C[i - Nx]) / 2 / pow(dy, 2));  // Insulated boundary at the top
            }
        }

    }

}

void PdeSolve::Getb(std::vector<double>& T, std::vector<double>& b)
{
    // The form of b = (rho * Cp * T + dt * Q)
    double k = dt;
    std::transform(Q.begin(), Q.end(), b.begin(), [k](auto& elem){return k * elem;});
    std::transform(b.begin(), b.end(), T.begin(), b.begin(), std::plus<double>());

}

std::vector<double> PdeSolve::Solve(ProblemInput& Inputs, Grid& grid)
{
    int cnt = 0;

    // We solve the system Ax = b for the PDE
    std::vector<std::vector<double>> A(Nx * Ny, std::vector<double>(Nx * Ny, 0));
    std::vector<double> b(Nx * Ny, 0);

    // Assemble the Coefficient matrix only once
    GetA(A);
    while(cnt < Inputs.NumTimeSteps){
        // construct the RHS
        Getb(T, b);

        // Call the linear solver
        T = eigsolve(A, b);

        cnt++;
    }

    return T;
}

#ifndef PROBLEMINPUT_H
#define PROBLEMINPUT_H

#include <unordered_map>
#include <variant>
#include <vector>
#include <string>


class ProblemInput
{
public:
    std::string Case;
    int Nx, Ny, NumTimeSteps, NumHetSec, NumOptSteps, Density, Cp;
    double Lx, Ly, tFinal, CInit, TInit, TLeft, TRight, alpha, OptErr;

    std::vector<std::vector<double>> HeatCond;
    std::vector<double> HeatInput;

    // Constructor
    ProblemInput(char*);
};

#endif // PROBLEMINPUT_H

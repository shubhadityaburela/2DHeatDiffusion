#include "probleminput.h"
#include "rapidjson/document.h"
#include "rapidjson/filereadstream.h"
#include <iostream>
#include <fstream>
#include <string>
#include <variant>

using namespace rapidjson;

ProblemInput::ProblemInput(char *InputFile)
{
    FILE *fp;
    fp = fopen(InputFile, "r");

    char readBuffer[65536];
    FileReadStream is(fp, readBuffer, sizeof(readBuffer));
    Document d;
    d.ParseStream(is);

    fclose(fp);

    Case = d["case"].GetString();
    Lx = d["Lx"].GetDouble();
    Ly = d["Ly"].GetDouble();
    Nx = d["Nx"].GetInt();
    Ny = d["Ny"].GetInt();
    tFinal = d["tFinal"].GetDouble();
    NumTimeSteps = d["NumTimeSteps"].GetInt();
    NumHetSec = d["NumHetSec"].GetInt();
    TInit = d["TInit"].GetDouble();
    TLeft = d["TLeft"].GetDouble();
    TRight = d["TRight"].GetDouble();
    alpha = d["alpha"].GetDouble();
    NumOptSteps = d["NumOptSteps"].GetInt();
    OptErr = d["OptErr"].GetDouble();
    Density = d["Density"].GetDouble();
    Cp = d["Cp"].GetDouble();

    // Read the heat source and the heat diffusivity values
    const Value& q = d["HeatInput"];
    assert(q.IsArray());
    for(SizeType i=0; i < q.Size(); i++){
        HeatInput.push_back(q[i].GetDouble());
    }


    const Value& c = d["HeatCond"];
    HeatCond.resize(NumHetSec, std::vector<double>(c.Size() / NumHetSec));
    assert(c.IsArray());
    for(int i=0; i < NumHetSec; i++){
        for(SizeType j=0; j < c.Size() / NumHetSec; j++){
            HeatCond[i][j] = c[(c.Size() / NumHetSec) * i + j].GetDouble();
        }
    }

}

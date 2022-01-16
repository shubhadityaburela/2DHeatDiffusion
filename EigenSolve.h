#ifndef EIGENSOLVE_H
#define EIGENSOLVE_H

#include <vector>
#include <Eigen/Dense>
#include <Eigen/SparseLU>
#include <iostream>

using Mat = std::vector<std::vector<double>>;
using Vec = std::vector<double>;

Vec eigsolve(const Mat& A, const Vec& b)
{
    // We will be solving Cy = d as the linear system
    Eigen::VectorXd d(b.size()), y(b.size());
    // create a triplet list (COO) format from the Mat A
    std::vector<Eigen::Triplet<double>> tripletlist;
    for(auto i = 0; i < A.size(); i++){
        d(i) = b[i];
        for(auto j = 0; j < A[i].size(); j++){
            if(A[i][j] != 0){
                tripletlist.push_back(Eigen::Triplet<double>(i, j, A[i][j]));
            }
        }
    }
    // Construct a sparse matrix from the triplets
    Eigen::SparseMatrix<double> C(A.size(), A[0].size());
    C.setFromTriplets(tripletlist.begin(), tripletlist.end());
    C.makeCompressed();

    // Apply sparse LU decomposition
    Eigen::SparseLU<Eigen::SparseMatrix<double>> SpLUD(C);
    y = SpLUD.solve(d);

    Vec x;
    for(auto& itr : y){
        x.push_back(itr);
    }

    return x;
}

#endif // EIGENSOLVE_H

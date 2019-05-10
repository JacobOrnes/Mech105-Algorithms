# <a href="https://github.com/JacobOrnes/Mech105-Algorithms/blob/master/LU-Decomposition/luFactor.m">luFactor.m</a>
### Input/Output function:
function [L,U,P] = luFactor(A)

#### Inputs
* A - coefficient matrix
#### Calculated Outputs
* L - lower triangular matrix
* U - upper triangular matrix
* P - the pivot matrix
####
The luFactor function factors an input matrix as the product of a lower triangular matrix and an upper triangular matrix. It uses pivoting to avoid subtractive cancelation error. The function does encounter errors when pivoting a input matrix with zeros already in it.

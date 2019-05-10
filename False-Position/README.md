# <a href="https://github.com/JacobOrnes/Mech105-Algorithms/blob/master/False-Position/falsePosition.m">falsePosition.m</a>
### Input/Output function:
function [root,ea,iter,fx] = falsePosition(func,xl,xu,es,maxiter)

#### Inputs
* func - input function
* xl - lower guess 
* xu - upper guess
* es - the desired relative error (default to 0.0001%)
* maxiter - the number of iterations desired (default to 200)
#### Calculated Outputs
* root - the estimated root location
* ea - the approximate relative error (%)
* iter - how many iterations were performed
* fx - the function evaluated at the root location
####
The False Position function works by using the input funtion and the guess at the bounds in order to complete its estimation to find the root. If the calculated value does not meet the criteria of the error bound or max iterations, the function will use the sign of the estimated root to determine if it will be the new lower or upper bound. The function will run until the desired conditions are met.

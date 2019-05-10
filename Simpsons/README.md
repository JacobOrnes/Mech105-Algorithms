# <a href="https://github.com/JacobOrnes/Mech105-Algorithms/blob/master/Simpsons/Simpson.m">Simpson.m</a>
### Input/Output function:
function I = Simpson(x,y)

#### Inputs
* x - array with x values
* y - array with y values
#### Calculated Outputs
* I - Approximated integration value
####
The Simpson function uses the x and y arrays to complete error checks, such as if the arrays are different sizes. The function then performs a Simpsons 1/3 integration. If there is an odd amount of intervals, then there will be an extra trapezoidal rule for the last interval.

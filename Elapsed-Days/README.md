# <a href="https://github.com/JacobOrnes/Mech105-Algorithms/blob/master/Elapsed-Days/elapseddays.m">elapseddays.m</a>
### Input/Output function:
function [nd] = days(mo,da,leap)

#### Inputs
* mo - desired month
* da - desired day
* leap - if the desired year is a leap year enter 1, otherwise enter 0
#### Calculated Outputs
* nd - the number of days that have passed in the year
####
The elapsed days function uses the input date values to calculate the amount of elapsed days on that calendar year. It adds 1 more day if the year selected is a leap year. However this does not account for days before February 29, or if the input date is February 29 and the desired year is a leap year.

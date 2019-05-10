%% Jake Ornes 
%% Mech 105 

function I = Simpson(x,y)

%% Doing an error check to make sure that x and y are the same length.%%
%%This is because each y value needs its own x value to be a function.%%

if length(x) ~= length(y)
%%if the lengths are different display an error%%
    error('The inputs of x and y must be the same length')
    return
end

%%error check for equally spacing in the x vector%%
%%gather the initial value of the vector%%
xi = x(1);
%%figure out how many values are in the vector%%
n = length(x);
%%Using the length of the vector find the final value in the vector%%
xf = x(n);
%%make a vector that is equally spaced between the initial and %%
%%final vector %%
equallyspacecheck = linspace(xi,xf,n);
test = isequal(equallyspacecheck,x);
%%check to see if the vectors are different%%
if test ~= 1;
%%if the x vector and the equally spaced vector are different display%% 
%%error%%
    error('intervals are not equally spaced')
end

%%find out if the amount of intervals are even or odd%%
oddoreventest = ((n-1)/2); %%(n-1) find the amount of intervals%%
oetest = floor(oddoreventest); %% makes the decimal go away and it rounds down%%
oetestcheck = isequal(oetest,oddoreventest); %%if they do not equal then
%%rounding occured and its an odd number of intervals
if oetestcheck == 0
%%warn user that trap rule needs to be used for odd number of intervals%%
    warning('trapezoidal rule must be used for the last interval, because the number of intervals is odd')
end

%%script%%

h = ((xf-xi)/(n-1)); %%find the interval length%%
if oetestcheck == 0 %%if odd number of intervals it will use the first part%%
%%find integrated value from the first x value to the second to last using
%%simpsons rule%%
    Iifodd = (h/3)*(sum(y(2:2:n-2))*4 +sum(y(3:2:n-3))*2+ y(n-1) + y(1));
%%find the integrated value from the second to last x value to the last x
%%value%%
    Trap = (-(xf-1)+xf)*(y(n-1)+y(n))/2;
%%add the simpsons rule and trap rule together to get the sum%%
    sumofequationsodd = Iifodd + Trap
else
%%find the simpsons rule from the first value to the last%%
     justsimpson = (h/3)*(sum(y(2:2:n))*4 + sum(y(3:2:n-1))*2 + y(1) + y(n))
end
end
    
    
    

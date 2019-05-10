%% Jake Ornes 
%march 3, 2019
% Mech 105 

function [root,fx,ea,iter] = falsePosition(func,xl,xu,es,maxiter)
% making sure there are at least three inputs 
if nargin<3
    error('need at least three inputs');
end
% setting a default es 
if nargin==3
    es = 0.0001;
    maxiter = 200;
end
% setting a default maxiter
if nargin==4
    maxiter = 200;
end
% making sure there is a root for the function
rootcheck = func(xl)*func(xu);
if rootcheck>0
    error(' there is no root available');
end
% starting variables
xr = xl;
ea = 100;
iter = 0;
% set the while loop 
while (1)
    xrlastnumber = xr;
    % false position function given
    xr = xu -((func(xu)*(xl-xu))/(func(xl)-func(xu)));
    % finds approximate error
    ea = abs(((xr-xrlastnumber)/xr)*100);
    % find where the root is located
    rootcheck = func(xl)*func(xr); 
    if rootcheck > 0
        xl = xr;
    elseif rootcheck < 0
        xu = xr;
    end
    % adds an iteration
        iter = iter +1;
        if ea <= es || iter >= maxiter
            % ends while loop when error is low enough
            break
        end
end
% ends the while loop 
    root = xr;
    fx = func(xr);
end
    
        
        
    

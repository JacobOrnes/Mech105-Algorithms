%%Jacob Ornes
%February 8, 2019
function ans = machineepsilon
E = 1;
while (1)
    if (1+E <= 1) break;
    end
    E = E/2;
end
ans = E*2;

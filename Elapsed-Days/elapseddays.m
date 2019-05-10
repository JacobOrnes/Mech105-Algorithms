%%Jacob Ornes
%February 3, 2019
function nd = days(mo, da, leap)
year=zeros(21,1);
year=([1,2,3,4,5,6,7,8,9,10,11,12])=[31,28,31,30,31,30,31,31,30,31,30,31];
i=i;
nd=0;
while i<mo
    nd=year+nd;
    i=1+i;
end
nd=(da-1)+nd;
if mo~=2
    nd=nd+leap;
end

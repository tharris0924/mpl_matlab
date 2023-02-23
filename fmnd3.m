%Simulate from FM(lam=-1) in sample space a<x<b and c<y<d
function D=fmrnd3(a,b,c,d,n)
D=[];
for i=1:n
y=c+(d-c)*rand;
u=rand;
x=(-y+sqrt(y^2+4*(1-y)*u))/(2*(1-y));
x=a+(b-a)*x;
D=[D;x y];
end


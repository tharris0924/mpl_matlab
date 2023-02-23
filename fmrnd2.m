%Draw a random pair (x,y) from the Farlie-Morgenstern with lam=-
1.
function D=fmrnd2(n)
D=[];
for i=1:n
y=rand;
u=rand;
x=(-y+sqrt(y^2+4*(1-y)*u))/(2*(1-y));
D=[D;x y];
end
f=hist3(D,[15 15]);
bar3(f)
xlabel('x')
ylabel('y')
zlabel('f(x,y)')
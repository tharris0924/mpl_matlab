%Simulate from the MPL model
function x=fmplrnd(b,c,N)
[J c0]=pyrlinkfarmor(b,c);
[t1 t2]=sort(J);
T=cumsum(t1);
x=[];
for i=1:N
u=rand;
r=min(find(T>=u));
w=t2(r);
if w==5, xx=b(1)+(b(2)-b(1))*rand(1,2);
elseif w==4, xx=fmrnd3(b(2),1,b(2),1,1);%round(J(w)*N));
elseif
 w==3, xx=fmrnd3(b(2),1,0,b(1),1);%round(J(w)*N));
elseif
 w==2, xx=fmrnd3(0,b(1),b(2),1,1);%round(J(w)*N));
else xx=fmrnd3(0,b(1),0,b(1),1);%round(J(w)*N));
end

x=[x;xx];

end
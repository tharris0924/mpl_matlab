function r=kendalls_tau(x)
N=length(x);
for i=1:N-1
for j=i+1:N
r(i,j)=length(find(x(i,1)-x(j,1))*(x(i,2)-x(j,2))>0)-
length(find((x(i,1)-x(j,1))*(x(i,2)-x(j,2))<0));
end
end
tau = sum(r(:))/length(r(:));
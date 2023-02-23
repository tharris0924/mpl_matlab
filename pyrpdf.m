%pyrpdf.m Calculate pdf of pyramid distr with FM slopes. Mode b
function [f F K c r]=pyr2pdf(b)
b=[.3 .7];
c=pyrfarliemorgen(b);
t=length(0:.05:1);
X=[];
x1=0:.05:b(1);x2=0:.05:b(2);
%X=[x1' x2'];
na1=length(x1);nb1=length(x2);
f1=[];
for i=1:na1
for j=1:nb1
f1(i,j)=c*(2*x1(i)+2*x2(j)-4*x1(i)*x2(j))/b(1)/(1-
b(1))/4;
end
end
x1=0:.05:b(1);x2=b(2)+.05:.05:1;
%X=[X;x1' x2'];
n1=length(x1);n2=length(x2);
for i=1:n1
for j=1:n2
a=2*b(1)+2*(1-b(2))-4*b(1)*(1-b(2));
f2(i,j)=c*(2*x1(i)+2*(1-x2(j))-4*x1(i)*(1-x2(j)))/a;
end
end
x1=b(1)+.05:.05:1;x2=b(2)+.05:.05:1;
%X=[X;x1' x2'];
nb1=length(x1);nb2=length(x2);
for i=1:nb1
for j=1:nb2
a=4*b(2)*(1-b(2));
f3(i,j)=c*(2*(1-x1(i))+2*(1-x2(j))-4*(1-x1(i))*(1-
x2(j)))/a;
end
end
x1=b(1)+.05:.05:1;x2=0:.05:b(2);
%X=[X;x1' x2'];
n1=length(x1);n2=length(x2);
for i=1:n1
for j=1:n2
a=2*(1-b(1))+2*b(2)-4*(1-b(1))*b(2);
f4(i,j)=c*(2*(1-x1(i))+2*x2(j)-4*(1-x1(i))*x2(j))/a;
end
end
%x1=b(1)+.05:.05:b(2)-.05;
%x2=b(1)+.05:.05:b(2)-.05;
%X=[X;x1' x2'];
%n1=length(x1);n2=length(x2);
%c0=pyrfarliemorgen(b);
%c0=(1-c(1)*b(1)^2/2-c(3)*b(1)*(1-b(2))/2-c(4)*(1-b(2))^2/2-
c(2)*b(2)*(1-b(1))/2)/(b(2)-b(1))^2;
%for i=1:n1
%for j=1:n2
%f0(i,j)=c0;
%end
%end
f=zeros(t,t);
%h=zeros(7,7)
k1=round(f1*100);
k2=round(f2*100);
k3=round(f3*100);
k4=round(f4*100);
%k0=round(f0*100);
f=[f1 f2;f4 f3];
f=f/sum(sum(f));
C=[k4 k3];
%A=[h' k0 h'];
B=[k1 k2];
K=[B;C];
figure(3)
bar3(f)
%g2=[f2' h' f3'];
%1=[f1 h' f4];
%3=[h f0 h];
%=[g2;g3;g1];
%bar3(g)
xlabel('x1')
ylabel('x2')
zlabel('Pdf')
m=21;
F=[];
F=empcdf(t,K);
%for i=1:m
%
 r=length(find(X(:,1)<=X(i,1)&X(:,2)<=X(i,2)));
%
 F(i)=r/m;
%end
figure(2)
stairs(sort(F))
r=pcorr(f);
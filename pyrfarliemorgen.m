function a=pyrfarliemorgen(b)
A1=b(1)*b(2)/2;
A2=b(1)*(1-b(2))/2;
A3=(1-b(1))*b(2)/2;
A4=(1-b(1))*(1-b(2))/2;
B1=(b(1)+b(2)-b(1)*b(2))/(b(1)+b(2)-2*b(1)*b(2));
B2=(b(1)+(1-b(2))-b(1)*(1-b(2)))/(b(1)+(1-b(2))-2*b(1)*(1-
b(2)));
B3=((1-b(1))+b(2)-(1-b(1))*b(2))/((1-b(1))+b(2)-2*(1-
b(1))*b(2));
B4=((1-b(1))+(1-b(2))-(1-b(1))*(1-b(2)))/((1-b(1))+(1-b(2))-
2*(1-b(1))*(1-b(2)));
a=1/(A1*B1+A2*B2+A3*B3+A4*B4);
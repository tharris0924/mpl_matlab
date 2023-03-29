%Draw a random pair (x,y) from the Farlie-Morgenstern with lam=-
function D=FGM_copula_plot(a,b,c,d,n)
D=[];
for i=1:n
y=c+(d-c)*rand;
u=rand;
x=(-y+sqrt(y^2+4*(1-y)*u))/(2*(1-y));
x=a+(b-a)*x;
D=[D;x y];
end

hist3(D,[15 15],'CDataMode','auto','FaceColor','interp');
% bar3(f)
xlabel('\textit{x}', 'FontName', 'Times New Roman', ...
       'Color','k', 'Interpreter', 'LaTeX')
ylabel('\textit{y}', 'FontName', 'Times New Roman', ...
       'Color','k', 'Interpreter', 'LaTeX')

zlabel('Frequencies of Pairs','FontName', 'Times New Roman', ...
       'Color','k', 'Interpreter', 'LaTeX')
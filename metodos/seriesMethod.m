clear all
%Programa para resolver un problema de valor inicial de primer orden
%por el método de la serie con tres términos
%La formulación del problema es: y'=f(x,y);y(xi)=yi en el intervalo:[xi,xf]
% con n iteraciones.
% Entrada de la información
syms x y
n=input('numero de iteraciones = ');
xi=input('abscisa inicial = ');
xf=input('abscisa final = ');
yi=input('ordenada inicial = ');
f=input('entrar la funcion f(x,y) = ');
Df= input('entrar la derivada de la funcion Df(x,y) = ');
% El tamaño de paso se calcula como
h=(xf-xi)/n;
%El vector de abscisas se calcula como
X=xi:h:xf;
% El vector de ordenadas se calcula como. Se usan mayúsculas para diferenciar los vectores de los %escalares
Y(1)=yi;
for k=1:n
x=X(k);
y=Y(k);
M1(k)=eval(f);
M2(k)=eval(Df);
Y(k+1)=Y(k)+h*M1(k)+(h^2/2)*M2(k);
end
[X' Y']
plot(X,Y,'k')
grid on

clear all
%Programa para resolver un problema de valor inicial de primer orden
%por el metodo Runge-Kutta de orden dos
%La formulacion del problema es: y'=f(x,y);y(xi)=yi en el %intervalo:[xi,xf]
% con n iteraciones.
% Entrada de la informacion
n=input('numero de particiones = ');
xi=input('abscisa inicial = ');
xf=input('abscisa final = ');
yi=input('ordenada inicial = ');
a1=input('factor de peso 1= ');
a2=input('factor de peso 2= ');
alfa=input('entre el alfa= ');
f=input('entrar la funcion f(x,y) = ');
% El tamano de paso se calcula como
h=(xf-xi)/n;
%El vector de abscisas se calcula como
X=xi:h:xf;
%El vector de ordenadas se calcula como
Y(1)=yi;
for k=1:n
x=X(k);
y=Y(k);
M1(k)=eval(f);
x=x+alfa*h;
y=y+(alfa*h*M1(k));
M2(k)=eval(f);
M(k)=a1*M1(k)+a2*M2(k);
Y(k+1)=Y(k)+h*M(k);
end
[X' Y']
plot(X,Y,'k')
grid on
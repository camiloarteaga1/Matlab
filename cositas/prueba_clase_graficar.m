clear all
% Programa para representar gráficamente una función f(x)
% Entrada de la información
a=input('abscisa inicial= ');
b=input('abscisa final= ');
n=input('numero de particiones= ');
f=input('entre la funcion f(x)= ');
% Se calcula el tamaño de paso
h=(b-a)/n;
% Ahora generamos el vector de abscisas y el vector de ordenadas
 X=a:h:b;
for k=1:n+1
 x=X(k);
 Y(k)=eval(f);
end
[X',Y'];
plot(X,Y)
grid on
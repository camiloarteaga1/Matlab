%Programa para resolver el problema con valor en la frontera
% y''+p(x)y'+q(x)y=r(x) con las condiciones y(a)=alfa,y(b)=beta
%con N intervalos, usando el metodo de las diferencias divididas
%Entrada de informacion
clear all
n=input('numero de intervalos= ');
a=input('abscisa inicial= ');
b=input('abscisa final= ');
alfa=input('ordenada inicial= ');
beta=input('ordenada final= ');
h=(b-a)/n;
% Se genera el vector de abscisas
X=a:h:b;
p=input('entre la funcion p(x)=');
q=input('entre la funcion q(x)=');
r=input('entre la funcion r(x)=');
for i=1:n+1
    x=X(i);
    p1(i)=eval(p);
    q1(i)=eval(q);
    r1(i)=eval(r);
end
Y(1)=alfa;
Y(n+1)=beta;
%Para hallar las ordenadas resulta un sistema
%tridiagonal de n-1 ecuaciones, así:
%La matriz del sistema es
%Inicializamos la matriz del sistema
m=n-1;
A=zeros(m,m);
b=zeros(m,1);
A(1,1)=h*h*q1(2)-2;
A(1,2)=1+(h/2)*p1(2);
A(m,m-1)=1-(h/2)*p1(n);
A(m,m)=h*h*q1(n)-2;
b(1)=h*h*r1(2)-alfa*(1-(h/2)*p1(2));
b(m)=h*h*r1(n)-beta*(1+(h/2)*p1(n));
for k=2:m-1
    b(k)=h*h*r1(k+1);
end
for k=2:m-1
    A(k,k-1)=1-(h/2)*p1(k+1);
    A(k,k)=h*h*q1(k+1)-2;
    A(k,k+1)=1+(h/2)*p1(k+1);
end
z=inv(A)*b;
for i=2:n
    Y(i)=z(i-1);
end
plot(X,Y,'k')
grid on

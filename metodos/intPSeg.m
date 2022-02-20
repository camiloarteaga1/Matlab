function eq = intPSeg(x,y,g,I)
%x=[datos] y=[datos] g=grad pol I=[D,x,y]
syms t
k=1;
%hace un vector con 1 t t^2 etc
while k<=g+1
    vT(1,k)=t^(k-1);
    k=k+1;
end
k=1;
%hace una matriz con las derivadas del vector de arriba
while k<=g-1
    vT(k+1,1:g+1)=diff(vT(k,1:g+1),t);
    k=k+1;
end
k=1;
kk=0;
xk=1;
M=zeros((g+1)*(length(x)-1));
r=zeros([(g+1)*(length(x)-1),1]);
%arma ecuaciones para cada punto y las pone en la matriz
while k<=2*(length(x)-1)
    M(k,(g+1)*kk+1:(g+1)*kk+1+g)=subs(vT(1,1:g+1),t,x(xk));
    r(k,1)=y(xk);
    if mod(k,2)==0
        kk=kk+1;
        xk=xk-1;
    end
    k=k+1;
    xk=xk+1;


end
xk=2;
Dk=2;
kk=0;
%compara las derivadas de las funciones y las pone en la matriz
while Dk<=g
    M(k,(g+1)*kk+1:(g+1)*kk+1+g)=subs(vT(Dk,1:g+1),t,x(xk));
    M(k,(g+1)*(kk+1)+1:(g+1)*(kk+1)+1+g)=-subs(vT(Dk,1:g+1),t,x(xk));

    if xk==length(x)-1
        kk=-1;
        Dk=Dk+1;
        xk=1;
    end
    k=k+1;
    xk=xk+1;
    kk=kk+1;

end
kkk=1
%la informacion de los valores iniciales se meten dentro de la matriz
while kkk<=g-1
    inf=I(kkk,1:3);
    kk=whichP(x,inf(2));
    M(k,(g+1)*kk+1:(g+1)*kk+1+g)=subs(diff(vT(1,1:g+1),t,inf(1)),t,inf(2));
    r(k)=inf(3);
    k=k+1;
    kkk=kkk+1;

end
%se soluciona la matriz
sol=inv(M)*r;
k=1;
%se hace eun vector con las funciones
while k<=length(x)-1
    eq(1,k)=sum(sol((g+1)*(k-1)+1:(g+1)*k)'.*vT(1,1:g+1));
    k=k+1;


end
k=1;
dh=(x(length(x))-x(1))/2000;
plot(x,y,'o')
hold on
%se hace el plot de la grafica resultante 
while k<=length(eq)
    syms t
    F(t)=eq(k);
    t=x(k):dh:x(k+1);
    plot(t,F(t),'b')
    k=k+1;


end
end
%dice a que ecuaciion pertenece un punto
function place= whichP(x,p)
    place=1;
    while ~(x(place)<=p && x(place+1)>=p)


        place=place+1;

    end
    place=place-1;


end

function [an,bn] = furierMAGANG(f,N,type)
% f es una funcion por ppartes que empieza en 0 [f1,a1;f2,a2;...fn,an], N es
% el grado de la aproximacion y fun es la ecuacion resultante 
syms n t fun(t)
med=size(f);
p=f(med(1),2)-0;
w=2*pi/p;
%se definen los bn y an
an(n)=(2/p)*intFun_partesM(f,sin(w*n*t));
bn(n)=(2/p)*intFun_partesM(f,cos(w*n*t));
%se defune la funcion que se va ha empezar a armar
a0=2*subs(intFun_partesM(f,1),n,0)/p;
delt=2*N/2000;
n1=-N:delt:-delt;
ann=horzcat(an(n1),[a0],an(n1+N+delt));
bnn=horzcat(bn(n1),[0],bn(n1+N+delt));
n1=horzcat(n1,[0],n1+N+delt);
n2=-N:-1;
adn=horzcat(an(n2),[a0],an(n2+N+1));
bdn=horzcat(bn(n2),[0],bn(n2+N+1));
n2=horzcat(n2,[0],n2+N+1);
%se grafica la funcion esprada roja y la obtenida azul
if type =='m'
plot(n1,sqrt(bnn.^2+ann.^2)/2)
hold on
plot(n2,sqrt(adn.^2+bdn.^2)/2,'o')
elseif type=='p'
plot(n1,atan(-bnn./ann))
hold on
plot(n2,atan(-bdn./adn),'o')
else

eror(' las opciones son [m] o [p]');
end

grid on
end

function I=intFun_partesM(f,g)
%integra una funcion multiplicada por otra 
syms t
k=1;
med=size(f);
a=0;
I=0;
while med(1)>=k
    
    I=I+int(f(k,1)*g,t,a,f(k,2));
    k=k+1;
    a=f(k-1,2);
end

end

function plotFP(f,N)
%funcion oscilatoria por partes 
syms t F(t)
fun=f(:,1)';
puntos=horzcat([0],f(:,2)');
p=puntos(length(puntos));
P=[];
L=[];
k=1;
%se hacen los puntos en un periodo
while length(fun)>=k
    

    F(t)=f(k);

    
    T=puntos(k):(puntos(k+1)-puntos(k))/( (2000/N) * ((puntos(k+1)-puntos(k))/p ) ):puntos(k+1);
    P=horzcat(P,T);
    kk=1;
    l=[];
    while kk<=length(T)
        l(kk)=F(T(kk));
        
        kk=kk+1;
    end
    L=horzcat(L,l);
    k=k+1;
end
k=1;
pp=[];
LL=[];
%se consiguen los puntos con los periodos deseados 
while k<=N
    pp=horzcat(pp,P+p*(k-1));
    LL=horzcat(LL,L);
    
    k=k+1;
end
%se grafica
plot(pp,LL,'r');
end


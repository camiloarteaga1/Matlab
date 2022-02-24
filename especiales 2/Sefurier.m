function fun = Sefurier(f,N)
% f es una funcion por ppartes que empieza en 0 [f1,a1;f2,a2;...fn,an], N es
% el grado de la aproximacion y fun es la cuncion resultante 
%   Detailed explanation goes here
syms n t
med=size(f);
p=f(med(1),2)-0;
w=2*pi/p;
an(n)=(2/p)*intFun_partesM(f,sin(w*n*t));
bn(n)=(2/p)*intFun_partesM(f,cos(w*n*t));
fun=subs(intFun_partesM(f,1),n,0)/2;
k=1;
T=0:3*p/2000:3*p;
while k<=N

    fun(t)=fun+an(k)*sin(k*w*t)+bn(k)*cos(k*w*t);
    %plot(T,fun(T));
    %grid on
    %hold on 
    k=k+1;
end
plot(T,fun(T),'b');
grid on
hold on 
plotFP(f,3);
end

function I=intFun_partesM(f,g)
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
syms t
fun=f(:,1)';
puntos=horzcat([0],f(:,2)');
p=puntos(length(puntos));
P=[];
l=[];
L=[];
k=1;
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
while k<=N
    pp=horzcat(pp,P+p*(k-1));
    LL=horzcat(LL,L);
    
    k=k+1;
end
plot(pp,LL,'r');
end
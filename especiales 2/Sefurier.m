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
%plotFP(f,N);
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
function plotFP(f,N);
syms t
med=size(f);
p=f(med(1),2)-0;
med=med(1);
k=1;
kk=1;
a=0;
puntos=f(:,2);
while N>=kk
    syms T
    F(t)=f(k,1);
    T=a:(puntos(k)-a)/(2000*((puntos(k)-a)/p)):puntos(k);
    plot(T,F(T-b),'r')
    kk=kk+1;
    k=k+1;
    if mod(med+1,kk)==0
        puntos=puntos+p;
        k=1;
        a=((med+1)/kk)*p;
        b=((med+1)/kk)*p;
    else
        a=puntos(k-1);
    end
    
end

end
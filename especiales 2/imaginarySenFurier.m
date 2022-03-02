function fun = imaginarySenFurier(f,N)
% f es una funcion por ppartes que empieza en 0 [f1,a1;f2,a2;...fn,an], N es
% el grado de la aproximacion y fun es la ecuacion resultante 
%   f tiene que depender de t
syms n t fun(t)
med=size(f);
p=f(med(1),2)-0;
w=2*pi/p;
%se define cn
cn=intFun_partesM(f,exp(-i*w*n*t))/p;
%se defune la funcion que se va ha empezar a armar
fun(t)=intFun_partesM(f,1)/p;
k=1-N;
T=0:3*p/2000:3*p;
%se arma la funcion
while k<=N
    if k~=0
        cnn=subs(cn,n,k);
        fun(t)=fun+cnn*exp(i*w*k*t);
    end
    
    %en caso de que se quiera ver como a medida que se anhaden distintos
    %elemento la funcion va aproximando la grafica se puede utilizar lo que
    %esta comentado abajo
    %plot(T,fun(T));
    %grid on
    %hold on 
    k=k+1;
end
%se grafica la funcion esprada roja y la obtenida azul
datF=fun(T);
hold on
plot(T,datF,'b');
plotFP(f,3);
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


var=input('variables a usar(tiene que estar definidas (syms ))[x1,x2...]: ');
fun=input('funciones en orden [f(x1,x2...)==0,f2(x1,x2...)==0...]: ');
%var=[x,y,z];
%fun=[3*x+y+z-3==0,x+y^2-4==0,x-2*y+z^2-1==0];

syms Fun magGrad
dim=length(var);
inicial=input('semilla [a,b...]: ');
syms M

i=1;

while i<=length(fun)
    if length(solve(fun(i),var(i)))==1

    Fun(i)=solve(fun(i),var(i));

    else  
    v=solve(fun(i),var(i));
    Fun(i)=v(1);
    end
    ii=1;
    sum=0;
    while ii<=length(fun)
        if i~=ii
            sum=sum+(diff(Fun(i),var(ii)))^2;

        end

        ii=ii+1;
        
    end
    magGrad(i)=sqrt(sum);

    i=i+1;

end

magGrad

resultados=inicial;




k=11;
iteracion=0;

while iteracion<k
    i=1;
    while i<=length(fun)
    
        ii=1;
        numero=Fun(i);
        while ii<=length(fun)
    
            numero=subs(numero,var(ii),resultados(ii));
            ii=ii+1;
    
        end
    
        resultados(i)=numero;

        i=i+1;
    
    end

    iteracion=iteracion+1;

end
round(resultados,3)

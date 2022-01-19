var=input('variables a usar(tiene que estar definidas (syms ))[x1,x2...]: ');
fun=input('funciones [f(x1,x2...),f2(x1,x2...)...]: ');
dim=length(var);
inicial=input('semilla [a,b...]: ');
syms M
row=1;
%estamos haciendo h
while row<=dim
    col=1;
    while col<=dim


    M(row,col)=diff(fun(row),var(col));
    

    col=col+1;

    end
    row=row+1;

end


hi=var;

col=1;
%definiendo hi
while col<=dim
    row=1;
    h=M;
    while row<=dim


    h(row,col)=fun(row);
    
    
    row=row+1;

    end
    hi(col)=det(h);
    col=col+1;

end

h=M;
col=1;
deth=det(h);
%hi/h
while col<=dim


    hi(col)=hi(col)/deth;
    col=col+1;

end

syms k n
n=10;
k=0;

resultado=inicial;
syms F
%encontrando la sol
while k<n
    col=1;
    resultado
    while col<=dim
        row=1;
        F=hi(col);

        while row<=dim
    
    
        F=subs(F,var(row),inicial(row));
        
        
        row=row+1;
    
        end
    
        resultado(col)=inicial(col)-F;
        col=col+1;
    end
    inicial=resultado;
    k=k+1;

end
round(resultado,3)



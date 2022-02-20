function val = IntserP(f,L1,L2,n)
% intera usabndo lasb series de taylor
% f=funcion L1=lim inf L2=lim sup

    syms x
    f(x)=f;
    x1=(L2-L1)/2;
    F=f(x-x1);
    k=1;
    
    while k<=n
        f(x)=diff(f,x);
        F=F+f(x1)*(x-x1)^k;
        k=1+k;
    end
    
    val=eval(int(F,L1,L2));
    



end


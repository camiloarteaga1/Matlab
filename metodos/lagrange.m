function F = lagrange(x,y)
    syms t
    k=1;
    F=0;
    while k<=length(y)
        
        F=F+y(k)*Lsubi(x,k);
        k=1+k;
    end
    plot(x,y,'o');
    hold on
    G(t)=F;
    t=x(1):(x(length(x))-x(1))/2000:x(length(x));
    plot(t,G(t));



end

function F = Lsubi(x,i)
    syms t
    k=1;
    F=1;
    while k<=length(x)
        
        if k~=i
            F=F*(t-x(k))/(x(i)-x(k));
        end
        k=1+k;
    end

end
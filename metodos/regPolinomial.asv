function F=regPolinomial(x,y,n)

    k=1;
    M=ones(n+1);
    while k<=2*n+1
    val=sumPow(x,k-1,ones(1,length(x),'uint16'));
    M=diag(M,val,k,n+1);
    k=k+1;

    end
    k=1;
    
    while k<=n+1
        val=sumPow(x,k-1,y);
        r(k,1)=val;
        k=k+1;

    end
    syms t
    sol=inv(M)*r;
    k=1;
    F=0;
    while k<=n+1
        F=F+sol(k)*t^(k-1);
        k=k+1;

    end
    plot(x,y,'o');
    hold on
    G(t)=F;
    t=x(1):(x(length(x))-x(1))/2000:x(length(x));
    plot(t,G(t));

end
%sum x^2*y
function val=sumPow(x,n,y)
    k=1;
    val=0;
    while k<=length(x)
        val=val+x(k)^n*y(k);
        k=k+1;
    end


end

%pone un valor en las diagoneles decrecientes de la matriz
function M=diag(M,val,n,Mlen)
    if n<=Mlen
        row=n;
        col=1;
    else
        row=Mlen;
        col=n-Mlen+1;
    end
        
        while row>=1 && col<=Mlen
            M(row,col)=val;
            col=col+1;
            row=row-1;
        end

end
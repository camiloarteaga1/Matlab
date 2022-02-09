function F = diferenciasNewton(x,y)
    syms t
    k=1;
%arma un vector que pueda entender el algoritme de abajo
    while length(x)>=k
        limx(k,1)=x(k);
        limx(k,2)=x(k);
        k=k+1;

    end
    b=[y(1)];
    [Dy,lim2x,b]=Bsubi(y,limx,b);

    k=1;
    F=b(1);
    factM=1;
    hold on
    %hac ela funcion
    while length(x)>k
        syms t
        factM=factM*(t-x(k));
        F=F+factM*b(k+1);
        k=k+1;
        %G(t)=F;
        %t=x(1):(x(length(x))-x(1))/2000:x(length(x));
        %plot(t,G(t));


    end
    plot(x,y,'o');
    hold on
    G(t)=F;
    t=x(1):(x(length(x))-x(1))/2000:x(length(x));
    plot(t,G(t));

end
%hace los Bi
function [Dy,limx,B] = Bsubi(Dy,limx,B)
    if length(Dy)==1

    else
        k=1;
        Dyaux=[];
        limxaux=[];
        while k<length(Dy)
            limxaux(k,1)=limx(k,1);
            limxaux(k,2)=limx(k+1,2);
            Dyaux(k)=(Dy(k+1)-Dy(k))/(limxaux(k,2)-limxaux(k,1));
            k=k+1;
        
        end
        Dy=Dyaux;
        limx=limxaux;
        B(length(B)+1)=Dy(1);
        [Dy,limx,B]=Bsubi(Dy,limx,B);
    end

end
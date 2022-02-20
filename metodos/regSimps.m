function minMax = regSimps(f,l1,l2,n)
%REGSIMPS Summary of this function goes here
%   Detailed explanation goes here
syms x
if mod(n,3)==0
    f(x)=f;
    i=1;
    is=0;
    h=(l2-l1)/n;
    while i<=n/3

        is=is+f(l1+3*i*h-3*h)+3*f(l1+3*i*h-2*h)+3*f(l1+3*i*h-h)+f(l1+3*i*h);
        i=i+1;
    end
    Er=0;
    i=3;
    while i<=n-1

        Er=Er+f(l1+i*h-3*h)-4*f(l1+i*h-2*h)+6*f(l1+i*h-h)-4*f(l1+i*h)+f(l1+i*h+h);
        i=i+1;
    end
    is=eval(is*(3*h)/8);
    Er=eval(Er*(-3*h)/80);
    if Er<0
        minMax=[is+Er,is-Er];
    else
        minMax=[is-Er,is+Er];
    end
else
    disp('n debe ser multiplo de 3')
end


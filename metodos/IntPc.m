function sum = IntPc(x,y,I)
%   integrando datos
%   Detailed explanation goes here

    syms t
    ecuaciones=intPSeg(x,y,3,I);
    i=1;
    sum=0;

    while i<=length(ecuaciones)
        sum=sum+int(ecuaciones(i),t,x(i),x(i+1));
        i=i+1;
    end

    sum=eval(sum);

end

function val = intTrapecios(f,l1,l2,h)
%INTTRAPECIOS Summary of this function goes here
%   Detailed explanation goes here
syms x
val=0;
f(x)=f;
while l1<=l2

    val=val+(h/2)*(f(l1)+f(l1+h));
    if l1+h >=l2
        val=val+((l2-l1)/2)*(f(l1)+f(l2));
        l1=l2;
    end
    l1=l1+h;
end
val=eval(val);
end


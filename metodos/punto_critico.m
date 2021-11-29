clear all
x1=input('x1 aprox= ');
syms x y(x) root root2 c
y(x)=input('g fun= ');
        x2=x1;
        x1=y(x1);
        c=1;
        diff=abs(y(x1)-x1);
while diff>0.001
        x2=x1;
        x1=y(x1);
        c=c+1;

        diff2=diff;
        diff=abs(y(x1)-x1);
        if (diff > diff2)
            fprintf('diverge \n')
            break
            
        end

end
fprintf('val = %s \n ',eval(x1))
fprintf('iteraciones = %s \n ',c)
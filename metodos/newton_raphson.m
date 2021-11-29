clear all
x1=input('x1 aprox= ');
syms x y(x) root root2 x2
y(x)=input('y fun= ');
Dy(x)=diff(y(x),x);

fprintf('root = %s \n ',x1)
fprintf('y(root) = %s \n ',eval(y(x1)))
while abs(y(x1))>0.0001
    
        x1=x1-(y(x1)/Dy(x1));

        fprintf('root = %s \n ',eval(x1))
        fprintf('y(root) = %s \n ',eval(y(x1)))

end
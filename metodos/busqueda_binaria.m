clear all
a1=input('x1 inicial= ');
b1=input('x2 final= ');
syms x y(x) root root2
y(x)=input('y fun= ');

if y(a1)>0
    z1=a1;
    a1=b1;
    b1=z1;
end

root=(b1+a1)/2;
fprintf('root = %s \n ',root)
   fprintf('y(root) = %s \n ',eval(y(root)))
if (y(a1)<0 && y(b1)>0) || (y(a1)>0 && y(b1)<0)
    
    while abs(y(root))>=0.0001
        root2=root;
        if y(root)<0
            a1=root;

        else
            b1=root;

        end


        root=(b1+a1)/2;
        fprintf('root = %s \n ',root)
        fprintf('y(root) = %s \n ',eval(y(root)))

        if abs(root2-root)<0.0001
            break

        end

    end
    
end
    

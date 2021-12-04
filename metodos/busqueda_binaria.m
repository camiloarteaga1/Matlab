clear all
a1=input('lim inf= ');
b1=input('lim sup= ');
syms x y(x) root root2
y(x)=input('y fun= ');
state=0;
if y(a1)>0
    z1=a1;
    a1=b1;
    b1=z1;
    state=1;
end

root=(b1+a1)/2;
disp('| k | a | b | f(a) | f(b) | root | f(root) | b-a |');
k=0;
if (y(a1)<0 && y(b1)>0) || (y(a1)>0 && y(b1)<0)
    
    while abs(y(root))>=0.0001
        k=k+1;
        root2=root;
        if state==0
            inf=eval([k,a1,b1,y(a1),y(b1),root,y(root),b1-a1])
        else
            inf=eval([k,b1,a1,y(b1),y(a1),root,y(root),a1-b1])
        end

        if y(root)<0
            
            a1=root;

        else
            b1=root;

        end

        
        root=(b1+a1)/2;

        if abs(root2-root)<0.0001
            break

        end

    end
    
end
    

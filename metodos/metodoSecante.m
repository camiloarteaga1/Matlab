clear all
a=input('x1 inicial= ');
b=input('x2 final= ');
syms x1 y(x) root k
y(x)=input('y fun= ');
k=1;
x1=a;
fprintf('| k | root | f(root) | m(root) | f(root)/m (root)|')
m=(y(b)-y(a))/(b-a);
x1=a-(y(a)/m);
x1=round(x1,6);
round(eval([k,a,y(a),m,y(a)/m]),3)
k=2;
round(eval([k,b,y(b),m,y(b)/m]),3)
while abs(y(x1))>0.00001
    m=(y(b)-y(a))/(b-a);
    x1=a-(y(a)/m);
    x1=round(x1,6);
    k=k+1;
    round(eval([k,x1,y(x1),m,y(x1)/m]),3)
    
    
    
    
    if y(a)<0
        
        if y(x1)<0
            
           a=x1; 
        else
            
            b=x1;
            
        end
        
    else
        
        if y(x1)<0
            
           b=x1; 
           
        else
            
           a=x1;
           
        end
        
    end
    
       


end
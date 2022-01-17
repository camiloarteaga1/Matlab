clear all
a=input('x1 inicial= ');
b=input('x2 final= ');
syms x1 y(x) root k
y(x)=input('y fun= ');
k=0;
x1=a;
fprintf('| k | a | b | f(a) | f(b) | m | root | f(root) |')
while abs(y(x1))>0.0001
    m=(y(b)-y(a))/(b-a);
    x1=a-(y(a)/m);
    x1=round(x1,6);
    
    eval([k,a,b,y(a),y(b),m,x1,y(x1)])
    
    k=k+1;
    
    
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
        

clear all
a=input('x1 inicial= ');
b=input('x2 final= ');
syms x y(x) root
y(x)=input('y fun= ');

while abs(y(x1))>0.0001
    
    x1=x1-(y(a)*(b-a))/(y(b)-y(a));
    
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
    
       

        fprintf('root = %s \n ',eval(x1))
        fprintf('y(root) = %s \n ',eval(y(x1)))

end
        

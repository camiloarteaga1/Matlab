clear all
x1=input('x1 aprox= ');
syms x y(x) root root2 x2
y(x)=input('y fun= ');
Dy(x)=diff(y(x),x);

while true 
    

    fprintf('Ingresar: \n 1. newton rahpson \n 2. algoritmo mejorado \n Cualquier numero para salir');
    choice=input('\nOpcion: ');
    
    if choice==1
        
        
        
        fprintf('root = %s \n ',x1)
        fprintf('y(root) = %s \n ',eval(y(x1)))
        
        while abs(y(x1))>0.0001
    
        x1=x1-(y(x1)/Dy(x1));

        fprintf('root = %s \n ',eval(x1))
        fprintf('y(root) = %s \n ',eval(y(x1)))
        
        end
        

        break
        
        
    elseif choice==2
        u(x)=y(x)/Dy(x);
        Du(x)=diff(u(x),x);
        
        while abs(u(x1))>0.0001
    
        x1=x1-(u(x1)/Du(x1));

        fprintf('root = %s \n ',eval(x1))
        fprintf('y(root) = %s \n ',eval(u(x1)))
        
        end
        

        break
        
    else 
        
        error('Programa terminado correctamente')
        
        
    end
    
    
end

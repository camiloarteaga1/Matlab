clear all
x1=input('x1 aprox= ');
syms x y(x) root root2 x2
y(x)=input('y fun= ');
Dy(x)=diff(y(x),x);
n=3;
k=1;
disp('| k | x | f(x) | df(x) | (f(x))/(df(x)) |');
while true 
    

    fprintf('Ingresar: \n 1. newton rahpson \n 2. algoritmo mejorado \n Cualquier numero para salir');
    choice=input('\nOpcion: ');
    
    if choice==1
        
        
        while abs(y(x1))>0.00001
        round(eval([k,x1,y(x1),Dy(x1),y(x1)/Dy(x1)]),n)
        k=k+1;
        x1=x1-(y(x1)/Dy(x1));
        x1=round(x1,6);


        
        end
        round(eval([k,x1,y(x1),Dy(x1),y(x1)/Dy(x1)]),n)

        break
        
        
    elseif choice==2
        u(x)=y(x)/Dy(x);
        Du(x)=diff(u(x),x);
        
        while abs(u(x1))>0.0001
        round(eval([k,x1,u(x1),Du(x1),u(x1)/Du(x1)]),n)
        x1=x1-(u(x1)/Du(x1));
        x1=round(x1,6);

        
        end
        
        round(eval([k,x1,u(x1),Du(x1),y(x1)/Du(x1)]),n)
        break
        
    else 
        
        error('Programa terminado correctamente')
        
        
    end
    
    
end

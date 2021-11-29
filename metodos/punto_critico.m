clear all
a=input('lim inf = ');
b=input('lim sup= ');
syms x y(x) root root2 c
y(x)=input('g fun= ');
x1=(a+b)/2;
c=1;
        
        
        
while true 
    

    fprintf('Ingresar: \n 1. algoritmo normal \n 2. algoritmo mejorado \n Cualquier numero para salir');
    choice=input('\nOpcion: ');
    if choice==1
        
        
        while abs(y(x1)-x1)>0.001
        diff=abs(y(x1)-x1);
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

        break
        
    elseif choice==2
        m=(y(b)-y(a))/(b-a);
        G(x)=(m*x-y(x))/(m-1);
        while abs(G(x1)-x1)>0.001
            
            diff=abs(G(x1)-x1);
            x1=G(x1);
            c=c+1;

            diff2=diff;
            diff=abs(G(x1)-x1);
            if (diff > diff2)
                fprintf('diverge \n')
                break

            end
        

        end
        fprintf('val = %s \n ',eval(x1))
        fprintf('iteraciones = %s \n ',c)
        

        break
        
    else 
        
        error('Programa terminado correctamente')
        
        
    end
    
    
end

clear all
a=input('lim inf = ');
b=input('lim sup= ');
syms x y(x) root root2 k
y(x)=input('g fun= ');
x1=(a+b)/2;
k=1;
n=3;
disp('| k | x | f(x) |');
        
while true 
    

    fprintf('Ingresar: \n 1. algoritmo normal \n 2. algoritmo mejorado \n Cualquier numero para salir');
    choice=input('\nOpcion: ');
    if choice==1
        
        round(eval([k,x1,y(x1)]),n)
        while abs(y(x1)-x1)>0.001
            
        diff=abs(y(x1)-x1);
        x2=x1;
        x1=y(x1);
        k=k+1;
        diff2=diff;
        diff=abs(y(x1)-x1);
        
        if (diff > diff2)
            fprintf('diverge \n')
            break
            
        end
        
        x1=round(x1,6);
        round(eval([k,x1,y(x1)]),n)
        end

        break
        
    elseif choice==2
        
        m=(y(b)-y(a))/(b-a);
        lamada=m/(m-1);
        G(x)=(m*x-y(x))/(m-1);
        round(eval([k,x1,y(x1)]),3)
        
        while abs(G(x1)-x1)>0.001
            
            diff=abs(G(x1)-x1);
            x1=G(x1);
            k=k+1;
            diff2=diff;
            diff=abs(G(x1)-x1);
            
            %if (diff > diff2)
                %fprintf('diverge \n')
                %break

            %end
        
        x1=round(x1,6);
        round(eval([k,x1,y(x1)]),n)
        
        end
        
        
        

        break
        
    else 
        
        error('Programa terminado correctamente')
        
        
    end
    
    
end

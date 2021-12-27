%pagina principal 

clear all

syms u1 u2 u3 x(u1,u2,u3) y(u1,u2,u3) z(u1,u2,u3) h1(u1,u2,u3) h2(u1,u2,u3) h3(u1,u2,u3)


while true 
    

    fprintf('Ingresar: \n 1. hi \n 2. ui \n Cualquier numero para salir');
    choice=input('\nOpcion: ');
    if choice==1
        h1(u1,u2,u3)=input('h1(u1,u2,u3)= ');
        h2(u1,u2,u3)=input('h2(u1,u2,u3)= ');
        h3(u1,u2,u3)=input('h3(u1,u2,u3)= ');
        break
        
    elseif choice==2
        x=input('x(u1,u2,u3)= ');
        y=input('y(u1,u2,u3)= ');
        z=input('z(u1,u2,u3)= '); 
        
        %gradientes de x y z con respecto a {x,y,z}
        
        rdx=[diff(x,u1),diff(x,u2),diff(x,u3)];
        rdy=[diff(y,u1),diff(y,u2),diff(y,u3)];
        rdz=[diff(z,u1),diff(z,u2),diff(z,u3)];
        
        %magnitud de los vectores tangente a cada unas de las trayectorias
        %ui
        
        h1(u1,u2,u3)=simplify(sqrt(rdx(1)^2+rdy(1)^2+rdz(1)^2));
        h2(u1,u2,u3)=simplify(sqrt(rdx(2)^2+rdy(2)^2+rdz(2)^2));
        h3(u1,u2,u3)=simplify(sqrt(rdx(3)^2+rdy(3)^2+rdz(3)^2));
        
        break
        
    else 
        
        error('Programa terminado correctamente')
        
        
    end
    
    
end

[h1,h2,h3]

while true
    
        fprintf('Ingresar: \n 1. gradiente \n 2. div \n 3. rot \n 4. diff sup \n 5. diff vol \n 6. Integral de linea \n  Cualquier numero para salir')
        choice=input('\n opcion: ');
        if choice==1
            
            gradiente_fun_escalar();
            
        elseif choice==2
            div();
            
        elseif choice==3
            rot();
                
        elseif choice==4
            
            ds=simplify([h2*h3,h1*h3,h2*h1])
            
        elseif choice==5
            
            dv=simplify(h1*h2*h3)
            
        elseif choice==6
            
            int_lin();
        else
            error('Programa terminado correctamente')
                       
        end
end

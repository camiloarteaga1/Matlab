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
especioVectorial=0;
while true
    
        fprintf('Ingresar: \n 1. campo escalar {grad} \n 2. campo vectorial en espacio cordenado \n 3. diff sup \n 4. diff vol \n 5. Integral de linea \n 5. Integral de sup \n  Cualquier numero para salir')
        choice=input('\n opcion: ');
        if choice==1
            
            syms funEsc(u1,u2,u3)
            hayFE=1;
            funEsc=input('ingrese la funcion F(u1,u2,u3)= ');

            gradiente_fun_escalar();
            
        elseif choice==2

            syms fu1(u1,u2,u3) fu2(u1,u2,u3) fu3(u1,u2,u3)
            especioVectorial=1;
            fu1(u1,u2,u3)=input('funcion escalar en la direccion u1= ');
            fu2(u1,u2,u3)=input('funcion escalar en la direccion u2= ');
            fu3(u1,u2,u3)=input('funcion escalar en la direccion u3= ');

        elseif choice==3
            
            ds=simplify([h2*h3,h1*h3,h2*h1])
            
        elseif choice==4
            
            dv=simplify(h1*h2*h3)
            
        elseif choice==5
            
            int_lin();

            elseif choice==6
            
            int_sup();

        else
            error('Programa terminado correctamente')
                       
        end
end

syms t L_u1(t) L_u2(t) L_u3(t) t_inf t_sup d_L(t)

L_u1(t)=input('u1(t)= ');
L_u2(t)=input('u2(t)= ');
L_u3(t)=input('u3(t)= ');

t_inf=input('lim inf t= ');
t_sup=input('lim sup t= ');

%derivadas de Ui en duncion de t, tam,bien es el vector tangenciual a la
%trayectiria 
dL_u1(t)=diff(L_u1(t),t);
dL_u2(t)=diff(L_u2(t),t);
dL_u3(t)=diff(L_u3(t),t);

%diferenial de longitud
d_L(t)=sqrt( (h1(L_u1(t),L_u2(t),L_u3(t))*dL_u1(t))^2 + (h2(L_u1(t),L_u2(t),L_u3(t))*dL_u2(t))^2 + (h3(L_u1(t),L_u2(t),L_u3(t))*dL_u3(t))^2 );

while true 
    

    fprintf('Ingresar: \n 1. longitud de la curva \n 2. trabajo {W} \n Cualquier numero para salir');
    choice=input('\nOpcion: ');
    if choice==1
        
        int(d_L(t),t,t_inf,t_sup)
        
        break
        
    elseif choice==2
    %pronto
        
    else 
        
        error('Programa terminado correctamente')
        
        
    end
    
    
end

syms t L_u1(t) L_u2(t) L_u3(t) t_inf t_sup d_L(t)

L_u1(t)=input('u1(t)= ');
L_u2(t)=input('u2(t)= ');
L_u3(t)=input('u3(t)= ');

t_inf=input('lim inf t= ');
t_sup=input('lim sup t= ');

%derivadas de Ui en duncion de t, tam,bien es el vector tangenciual a la
%trayectiria 
dL_u1(t)=diff(L_u1(t),t)*h1(L_u1,L_u2,L_u3);
dL_u2(t)=diff(L_u2(t),t)*h2(L_u1,L_u2,L_u3);
dL_u3(t)=diff(L_u3(t),t)*h3(L_u1,L_u2,L_u3);

%diferenial de longitud
d_L(t)=sqrt( (dL_u1(t))^2 + (dL_u2(t))^2 + (dL_u3(t))^2 );

while true 
    

    fprintf('Ingresar: \n 1. longitud de la curva \n 2. trabajo {W} \n 3. productro cruz {?} \n Cualquier numero para salir');
    choice=input('\nOpcion: ');


    if choice==1
        
        int(d_L(t),t,t_inf,t_sup)
        
        break

    elseif choice==2

        if especioVectorial==1
        %eleguir entre la integral evaluada o no evaluada
        while true

            fprintf('Ingresar: \n 1. evaluada \n else. no evaluada \n ')
            choice=input('\n opcion: ');

            if choice==1
                int(dL_u1(t)*fu1(L_u1(t),L_u2(t),L_u3(t))+dL_u2(t)*fu2(L_u1(t),L_u2(t),L_u3(t))+dL_u3(t)*fu3(L_u1(t),L_u2(t),L_u3(t)),t,t_inf,t_sup)
                break
            else
                int(dL_u1(t)*fu1(L_u1(t),L_u2(t),L_u3(t))+dL_u2(t)*fu2(L_u1(t),L_u2(t),L_u3(t))+dL_u3(t)*fu3(L_u1(t),L_u2(t),L_u3(t)))
                break
            end

        break
        end
        else
        fprintf('no hay espacio vectoial')
        end


    elseif choice==3

        if especioVectorial==1
            %definiendo las componenetes del vector resultante de integrar
            %un productro cruz entre una rayectoria y un campo vectorial

            syms fXl_u1(t) fXl_u3(t) fXl_u2(t)


        %eleguir entre la integral evaluada o no evaluada
            while true

                fprintf('Ingresar: \n 1. evaluada \n else. no evaluada \n ')
                choice=input('\n opcion: ');

                if choice==1

                    fXl_u1(t)=int(-dL_u2(t)*fu3(L_u1(t),L_u2(t),L_u3(t))+dL_u3(t)*fu2(L_u1(t),L_u2(t),L_u3(t)),t,t_inf,t_sup);
                    fXl_u2(t)=int(-dL_u3(t)*fu1(L_u1(t),L_u2(t),L_u3(t))+dL_u1(t)*fu3(L_u1(t),L_u2(t),L_u3(t)),t,t_inf,t_sup);
                    fXl_u3(t)=int(-dL_u1(t)*fu2(L_u1(t),L_u2(t),L_u3(t))+dL_u2(t)*fu1(L_u1(t),L_u2(t),L_u3(t)),t,t_inf,t_sup);
                    fprintf('[fXl_u1,fXl_u2,fXl_u3]')
                    simplify([fXl_u1,fXl_u2,fXl_u3])
                    break

                else
                    
                    fXl_u1(t)=int(-dL_u2(t)*fu3(L_u1(t),L_u2(t),L_u3(t))+dL_u3(t)*fu2(L_u1(t),L_u2(t),L_u3(t)),t);
                    fXl_u2(t)=int(-dL_u3(t)*fu1(L_u1(t),L_u2(t),L_u3(t))+dL_u1(t)*fu3(L_u1(t),L_u2(t),L_u3(t)),t);
                    fXl_u3(t)=int(-dL_u1(t)*fu2(L_u1(t),L_u2(t),L_u3(t))+dL_u2(t)*fu1(L_u1(t),L_u2(t),L_u3(t)),t);
                    fprintf('[fXl_u1,fXl_u2,fXl_u3]')
                    simplify([fXl_u1,fXl_u2,fXl_u3])
                    break

                end

            break
            end
        else
            fprintf('no hay espacio vectoial')
        end

        
        
    else 
        
        break
        
        
    end
    
    
end

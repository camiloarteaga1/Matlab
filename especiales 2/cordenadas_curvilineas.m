var=[u1,u2,u3];
funVar=[u1*cos(u2),u1*sin(u2),u3];
while true
    choice=input('1.ingresar x(u1,u2,u3...)... \n else.ingresar los hi \n: ');

    if choice==1

        %funVar=input('[f(u1,u2,u3...,F(u1,u2,u3...),...]: ')

        if length(funVar)==length(var)
            i=1;
            while i<=length(var)
                hi(i)=magVec(diffVec(funVar,var(i),ones(length(var))));
                i=i+1;
            end
            hi=simplify(hi);
            break
        end


    else

        hi=input('[h1,h2,...]: ')

        if length(funVar)==length(hi)

            break

        end


    end

end




while true

choice=input([' 1.ingresar funcion escalar \n 2.ingresar funcion vectorial \n 3.integral de liena \n 4.integral de superficie \n 5.integral volumetrica \n else. salir del programa\n\n: '])

    if choice==1
    
        funE=input('f(u1,u2,u3...): ')

        gradFesc(Fe,var,hi);
    
    elseif choice ==2
        syms divFV rotFV
        funV=input('[f(u1,u2,u3...,F(u1,u2,u3...),...]: ')

        [divFV,rotFV]=funDivRot(funV,var,hi);
    
    elseif choice ==3
    
    elseif choice ==4
    
    elseif choice ==5
    
    else
    error('programa finalizado exitosamente');
    
    
    end


end
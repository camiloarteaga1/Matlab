var=input('[u1,u2,...]: ');
while true
    choice=input('1.ingresar x(u1,u2,u3...)... \n else.ingresar los hi \n: ');

    if choice==1

        funVar=input('[f(u1,u2,u3...,F(u1,u2,u3...),...]: ');

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


funE=1;
funV=[1,1,1];

while true

choice=input([' 1.ingresar funcion escalar \n 2.ingresar funcion vectorial \n 3.integral de liena \n 4.integral de superficie \n 5.integral volumetrica \n else. salir del programa\n\n: '])

    if choice==1
    
        funE=input('f(u1,u2,u3...): ')

        gradFE=gradFesc(Fe,var,hi);
    
    elseif choice ==2
        syms divFV rotFV
        funV=input('[f(u1,u2,u3...,F2(u1,u2,u3...),...]: ')

        [divFV,rotFV]=funDivRot(funV,var,hi)
    
    elseif choice ==3
        syms t
        R_t=input('[f(t),f2(t),...]: ');
        dR=diffVec(R_t,t,hi);
        magdr=magVec(dR);
        limites_t=input('[a,b]: ');
        FVdesp=funV;
        i=1;
        while i<=length(funV)
            FVdesp=subs(FVdesp,var(i),R_t(i));
            i=i+1;
        end
        intLin();


    elseif choice ==4
        syms t1 t2
        choice=input(' 1.vector R \n 2.funcion escalar=c \n: ');
        if choice==1;
            R_t1_t2=input('[f(t1,t2),f2(t1,t2),...]: ');
            dR1=diffVec(R_t1_t2,t1,hi);
            dR2=diffVec(R_t1_t2,t2,hi);
            ds=cross(dR1,dR2);
        else
            %todo tuyo cami 
        end
        magds=magVec(ds);
        limites_t1=input('t1 lim [a,b]: ');
        limites_t2=input('t2 lim [a,b]: ');
        
        FVdesp=funV;
        while i<=length(funV)

            FVdesp=subs(FVdesp,var(i),R_t1_t2(i));
            i=i+1;

        end
        FEdesp=funE;
        while i<=length(funV)

            FEdesp=subs(FEdesp,var(i),R_t1_t2(i));
            i=i+1;

        end
        intsup();
    elseif choice ==5
        limites_u1=input('u1 lim [a,b]: ');
        limites_u2=input('u2 lim [a,b]: ');
        limites_u3=input('u3 lim [a,b]: ');
        intvol();
    else
    error('programa finalizado exitosamente');
    
    
    end


end
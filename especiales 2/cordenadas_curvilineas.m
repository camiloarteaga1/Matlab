var=[u1,u2,u3];
funVar=[u1*cos(u2),u1*sin(u2),u3];
while true
    choice=input('1.ingresar x(u1,u2,u3...)... \n else.ingresar los hi')

    if choice==1

        %funVar=input('[f(u1,u2,u3...,F(u1,u2,u3...),...]: ')

        if length(funVar)==length(var)
            i=1;
            while i<length(var)
                h(i)=magVeg(diffVec(funVar,var(i),ones(length(var))))
            end
            break
        end


    else

        h1=input('[h1,h2,...]: ')

        if length(funVar)==length(hi)

            break
        end


    end

end
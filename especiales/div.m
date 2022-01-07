%div de la funcion pediada anteriormente
if especioVectorial==1
    divf(u1,u2,u3)=sinplify(diff(fu1,u1)/h1+diff(fu2,u2)/h2+diff(fu3,u3)/h3)
else
    fprintf('no hay espacio vectoial')
end


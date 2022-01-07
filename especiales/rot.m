%rot de la funcion pedida anteriormente
if especioVectorial==1

syms rotFu1(u1,u2,u3) rotFu2(u1,u2,u3) rotFu3(u1,u2,u3)

rotFu1(u1,u2,u3)=simplify(diff(fu3,u2)-diff(fu2,u3));
rotFu2(u1,u2,u3)=simplify(diff(fu3,u1)-diff(fu1,u3));
rotFu3(u1,u2,u3)=simplify(diff(fu2,u1)-diff(fu1,u2));

else
    fprintf('no hay espacio vectoial')
end
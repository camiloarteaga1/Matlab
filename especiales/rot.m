syms fu1(u1,u2,u3) fu2(u1,u2,u3) fu3(u1,u2,u3)


fu1=input('funcion escalar en la direccion u1= ');
fu2=input('funcion escalar en la direccion u2= ');
fu3=input('funcion escalar en la direccion u3= ');

rotF=simplify([diff(fu3,u2)-diff(fu2,u3),diff(fu3,u1)-diff(fu1,u3),diff(fu2,u1)-diff(fu1,u2)])
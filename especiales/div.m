syms fu1(u1,u2,u3) fu2(u1,u2,u3) fu3(u1,u2,u3)

fu1=input('funcion escalar en la direccion u1= ');
fu2=input('funcion escalar en la direccion u2= ');
fu3=input('funcion escalar en la direccion u3= ');

divf(u1,u2,u3)=sinplify(diff(fu1,u1)/h1+diff(fu2,u2)/h2+diff(fu3,u3)/h3)


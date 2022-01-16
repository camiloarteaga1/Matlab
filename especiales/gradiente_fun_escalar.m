syms gradFunEsc_u1(u1,u2,u3) gradFunEsc_u1(u1,u2,u3) gradFunEsc_u1(u1,u2,u3)

gradFunEsc_u1(u1,u2,u3)=diff(funEsc,u1)/h1;
gradFunEsc_u2(u1,u2,u3)=diff(funEsc,u2)/h2;
gradFunEsc_u3(u1,u2,u3)=diff(funEsc,u3)/h3;
[gradFunEsc_u1,gradFunEsc_u2,gradFunEsc_u3]
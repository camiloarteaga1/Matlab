syms ds_u1(u1,u2,u3) ds_u2(u1,u2,u3) ds_u3(u1,u2,u3) u1_inf(u2) u1_sup(u2) u2_inf u2_sup u3_despejada(u1,u2)

if hayFE==1
    fprintf('ingrese \n')
    u3_despejada(u1,u2)=input('u3(u1,u2)= ')
    u1_inf(u2)=input('limite inferior de u1: ')
    u1_sup(u2)=input('limite superior de u1: ')
    u2_inf=input('limite inferior de u2: ')
    u2_sup=input('limite superior de u2: ')
    ds_u1(u1,u2,u3)=(sqrt( (h1*gradFunEsc_u1)^2 + (h2*gradFunEsc_u2)^2 + (h3*gradFunEsc_u3)^2 )/(sqrt(gradFunEsc_u1^2+gradFunEsc_u2^2+gradFunEsc_u3^2)*(h3*gradFunEsc_u3)))*gradFunEsc_u1;
    ds_u2(u1,u2,u3)=(sqrt( (h1*gradFunEsc_u1)^2 + (h2*gradFunEsc_u2)^2 + (h3*gradFunEsc_u3)^2 )/(sqrt(gradFunEsc_u1^2+gradFunEsc_u2^2+gradFunEsc_u3^2)*(h3*gradFunEsc_u3)))*gradFunEsc_u2;
    ds_u3(u1,u2,u3)=(sqrt( (h1*gradFunEsc_u1)^2 + (h2*gradFunEsc_u2)^2 + (h3*gradFunEsc_u3)^2 )/(sqrt(gradFunEsc_u1^2+gradFunEsc_u2^2+gradFunEsc_u3^2)*(h3*gradFunEsc_u3)))*gradFunEsc_u3;

else
    fprintf('primero se debe ingresar una funcion escalar')
end



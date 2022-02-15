function c=correct_pot(w,L,R,porcent)
ang1=atan(w*L/R);
x=cos(ang1);
ange=acos((1+porcent)*(x));
t=tan(ange);
c=(R*t+w*L)/(w^3*L^2+w*R^2);

end

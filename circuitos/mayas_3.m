%circuitocontresmallas1
clear all
syms s Vi
Z1=input('Z1=');
Z2=input('Z2=');
Z3=input('Z3=');
Z4=input('Z4=');
Z5=input('Z5=');
R=input('carga=');
a=[Z1+Z2 -Z2 0;-Z2 Z2+Z3+Z4 -Z4;0 -Z4 Z4+Z5+R];
b=[Vi;0;0];
sol=inv(a)*b;
Yin=sol(1)/Vi;
G=R*sol(3)/Vi;
%admitancia de entrada
Yin=simplify(Yin)
%Ganancia de voltaje
G=simplify(G)
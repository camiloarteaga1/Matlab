function [datosx,datosy] = diagramaBDcasero(x,y,g,l1,l2,n,type)
%DIAGRAMABDCASERO Summary of this function goes here
%   Detailed explanation goes here
syms s kk
g(s)=g;
frec=[];
db=[];
ang=[];
k=1;
frec=logspace(l1,l2,2000);
if type=='f'
    f(kk)=eval(20*log10( abs( g( frec(k)*i*2*pi ) ) ) );
else if type=='a'
    f(kk)=eval(angle(g( frec(k)*i*2*pi )  ) );
else
    disp('diagrama de frecuencias [f] diagrama de fase [a]')
end
while k<=length(frec)
    db(k)=f(k);
    k=k+1;
end
semilogx(frec,db)
hold on
semilogx(x,y,'o')
end


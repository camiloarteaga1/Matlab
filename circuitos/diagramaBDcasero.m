function [datosx,datosy] = diagramaBDcasero(x,y,g,l1,l2,n)
%DIAGRAMABDCASERO Summary of this function goes here
%   Detailed explanation goes here
syms s
g(s)=g;
frec=[];
db=[];
k=1;
frec=logspace(l1,l2,2000);
while k<=length(frec)
    db(k)=eval(20*log10( abs( g( frec(k)*i*2*pi ) ) ) );
    k=k+1;
end
semilogx(frec,db)
hold on
semilogx(x,y,'o')
end


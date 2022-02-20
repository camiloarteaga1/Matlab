function eq = regEXP(X,Y,xi)
%REGEXP Summary of this function goes here
%   Detailed explanation goes here
syms t x
syms x
f11=sum(x.^X);
f12=sum(1-x.^X);
f21=sum(x.^(2.*X));
f22=sum(x.^X-x.^(2.*X));
g1=sum(Y);
g2=sum(Y.*x.^X);
numP=[g1 f12;g2 f22];
numF=[f11 g1;f21 g2];
den=[f11 f12;f21 f22];
P=det(numP)/det(den);
F=det(numF)/det(den);
alfa=sum(X.*x.^(2.*X));
beta=sum(X.*x.^X.*(1-x.^X));
gama=sum(x.^X.*X.*Y);
f=alfa*P+beta*F-gama;
x=fzero(@(x) eval(f),xi);
F=eval(F);
P=eval(P);
eq(t)=F+(P-F)*exp(log(x)*t);
plot(X,Y,'o');
hold on
t=X(1):(X(length(X))-X(1))/2000:X(length(X));
plot(t,eq(t));

end


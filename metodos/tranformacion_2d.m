clear all
a1=input('U1 inicial= ');
b1=input('U1 final= ');
a2=input('U2 inicial= ');
b2=input('U2 final= ');
syms u1 u2 x(u1,u2) y(u1,u2);
x(u1,u2)=input('x fun= ');
y(u1,u2)=input('y fun= ');
for i=a1:1:b1
    syms t
    t=a2:0.01:b2;
    X=x(i,t);
    Y=y(i,t);
    plot(X,Y,'color',[0 0.4470 0.7410])
    hold on
    
end

for i=a2:1:b2
    syms t
    t=a1:0.01:b1;
    X=x(t,i);
    Y=y(t,i);
    plot(X,Y,'color',[0.6350 0.0780 0.1840])
    hold on
    
end

    
    

clear all
%punto1
syms s v t
%matriz z
M=[20+0.1*s+1/(s*0.05),-1/(s*0.05);-1/(s*0.05),1/(s*0.05)+1/(s*0.1)+10+0.2*s];
R=[v;0];
sol=inv(M)*R;
%se halla G(s)
G(s)=(sol(2)*10)/v;
pretty(G(s))
%digrama de bode
bode([10000,0],[1,250,10350,40000,10000])
grid on
%respuesta
img=G(3*i);
V0=eval(10*abs(img)*cos(3*t -angle(img)*(180/pi)));
pretty(V0)


%punto 2
clear all
syms s v t
r=20;
c=1/(0.01*10);%inverso de la capacitancia
l=0.5*10;
M=[i*(l-c)+r,-l*i-r,c*i;-l*i-r,i*(3*l-c)+2*r,-l*i;c*i,-l*i,i*(l-c)+r];
R=[10;0;0];
sol=inv(M)*R;
i1=sol(1);
img=i1;
I1=eval(abs(img)*cos(3*t -angle(img)*(180/pi)));
pretty(I1)
p=((10*abs(img))/2)*cos(angle(img))
pf=cos(angle(img))


%punto 3
clear all
z=6+1/(1/(5+10*i)+1/(10+5*j));
I=10/z;
img=I;
p=((10*abs(img))/2)*cos(angle(img))
pf=cos(angle(img))
r=cos(angle(z))*abs(z);
w=10;
l=sin(angle(z))*abs(z)/w;
c=correct_pot(w,l,r,0.95/cos(angle(z))-1)


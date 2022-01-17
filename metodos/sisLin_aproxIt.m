%clear all
syms M num x m x1 rest

M=input('matriz: ');
num=input('parte num de la matriz: {a;b...}');
row=1;
dim=length(M);
m = magic(dim);
x1=zeros(dim,1);

while row<=dim
    col=1;
    while col<=dim


    if col~=row

    m(row,col)=-(M(row,col))/(M(row,row));
    
    else

    m(row,col)=0/M(col,col) ;

    end

    col=col+1;

    end
x1(row)= (num(row)) / (M(row,row));
row=row+1;
end
rest=x1;
n=input('numero de interaciones: ')
i=0;
x1
while i<=n
x1=rest+m*x1
i=i+1;
end



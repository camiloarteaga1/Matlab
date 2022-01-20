function x = funciones(x)
    x=x;
end

function mag = magVec(vec)
    size=length(vec)
    i=1;
    mag=0
    while i<=size

    mag=mag+vec(i)^2;

    end

    mag=mag^(1/2)

end

function res = diffVec(vec,var,hi)
    size=length(vec)
    i=1;
    while i<=size

        res(i)=diff(vec(i),var(i))*hi(i);

    end


end

function res = intVecLim(vec,var,lim)
    size=length(vec)
    i=1;
    while i<=size

        res(i)=int(vec(i),var(i),lim(1),lim(2));

    end


end

function res = gradFesc(f,var,hi)
    size=length(var)
    i=1;
    while i<=size

        res(i)=diff(f,var(i))/hi(i);

    end

end

function [div,rot] = funDivRot(vecF,var,hi)
row=1
while row<=3
    col=1;
    while col<=3

        M(row,col)=diff(vecF(row),var(col)/hi(col));
        col=col+1;
    end
    row=row+1;
end
div=[M(1,1),M(2,2),M(3,3)];
rot=[M(3,2)-M(2,3),M(1,3)-M(3,2),M(2,1)-M(1,2)];
end
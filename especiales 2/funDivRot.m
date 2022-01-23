function [div,rot] = funDivRot(vecF,var,hi)
row=1
while row<=3
    col=1;
    while col<=3

        M(row,col)=diff(vecF(row),var(col))/hi(col);
        col=col+1;
    end
    row=row+1;
end
div=[M(1,1),M(2,2),M(3,3)];
rot=[M(3,2)-M(2,3),M(1,3)-M(3,2),M(2,1)-M(1,2)];
end


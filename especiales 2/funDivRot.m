function [div,rot] = funDivRot(vecF,var,hi)
row=1
while row<=3
    col=1;
    while col<=3

        if row==col
            i=1;
            factor=1;
            while i<=3
                
                if i~=col

                    factor=factor*hi(i);
                    
                end

                i=i+1;
            end
            
            M(row,col)=diff(vecF(row)*factor,var(col));

        else
            i=1;
            factor=1;
            while i<=3
                
                if i~=col & i~=row

                    factor=factor*hi(i);
                    
                end

                i=i+1;
            end

            M(row,col)=diff(vecF(row)*hi(row),var(col))*factor;
        end
        col=col+1;
    end
    row=row+1;
end
M=M/(hi(1)*hi(2)*hi(3));
div=simplify(M(1,1)+M(2,2)+M(3,3));
rot=simplify([M(3,2)-M(2,3),M(1,3)-M(3,2),M(2,1)-M(1,2)]);
end


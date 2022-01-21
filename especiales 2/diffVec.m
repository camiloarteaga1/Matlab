function res = diffVec(vec,var,hi)
    size=length(vec);
    i=1;
    while i<=size

        res(i)=diff(vec(i),var)*hi(i);
        i=i+1;
    end


end


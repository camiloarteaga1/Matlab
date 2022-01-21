function res = intVecLim(vec,var,lim)
    size=length(vec)
    i=1;
    while i<=size

        res(i)=int(vec(i),var(i),lim(1),lim(2));

        i=i+1;

    end


end


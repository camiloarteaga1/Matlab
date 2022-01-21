function res = gradFesc(f,var,hi)
    size=length(var)
    i=1;
    while i<=size

        res(i)=diff(f,var(i))/hi(i);

        i=i+1;

    end

end


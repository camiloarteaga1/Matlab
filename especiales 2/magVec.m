function mag = magVec(vec)
    size=length(vec);
    i=1;
    mag=0;
    while i<=size

    mag=mag+vec(i)^2;
    i=i+1;

    end

    mag=mag^(1/2);

end


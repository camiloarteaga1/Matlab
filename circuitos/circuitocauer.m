function fc = circuitocauer(num,den)
% circuitocauer
syms s
if length(num) == length(den)
    q=num(1)/den(1);
    r=num-q*den;
    if ~isempty(find(r<0,1))
        r=den;
        den=num;
        num=r;
        fprintf('\nZin Paralelo');
        q=num(1)/den(1);
        r=num-q*den;
    else
        fprintf('\nZin Serie');
    end
    fc(1)=sym(q);
else
    if length(num) > length(den)
          fprintf('\nZin Serie');
    else
        r=den;
        den=num;
        num=r;
        fprintf('\nZin Paralelo');
    end
den(end+1)=0;
    q=num(1)/den(1);
    r=num-q*den;
    den=den(1:end-1);
    fc(1)=q*s;
end
k=2;
while length(den)>=2
    num=den;
    den=r(find(r,1):end);
    if length(num)~= length(den)
        den(end+1)=0;
        q=num(1)/den(1);
        r=num-q*den;
        den=den(1:end-1);
        fc(k)=q*s;
        k=k+1;
    else
        q=num(1)/den(1);
        r=num-q*den;
        if ~isempty(find(r<0,1))
            r=den;
            den=num;
            num=r;
            q=num(1)/den(1);
            r=num-q*den;
            fc(k-1)=fc(k-1)+q;
        else
            fc(k)=sym(q);
            k=k+1;
        end
    end
end
if r~=0
    fc(k-1)=fc(k-1)+r/den;
end
fc
end


while true
    choice=input('1.V(F).V(dl)\n 2.V(F)xV(dl) \n 3.dl\n\n: ');
    if choice==1
        
        expretion=dot(funV,dR);
        i=1;
        while i<=length(funV)
            expretion=subs(expretion,var(i),R_t(i));
            i=i+1;
        end
        int(expretion,t,limites_t(1),limites_t(1))
        
    elseif choice==2
        expretion=cross(funV,dR);
        i=1;
        while i<=length(funV)
            expretion=subs(expretion,var(i),R_t(i));
            i=i+1;
        end
        intVecLim(expretion,t,limites_t)
        
        
    else

        int(ds,t,limites_t(1),limites_t(1))

    end

end
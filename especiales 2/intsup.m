while true
    choice=input('1.funEsc*V(ds)\n 2.funEsc*ds \n 3.V(F).V(ds) \n 4.V(F)xV(ds) \n\n: ');
    if choice==1
        
        intVecLim(intVecLim(FEdesp*ds,t1,limites_t1),t2,limites_t2)
        
    elseif choice==2

        int(int(FEdesp*magds,t1,limites_t1(1),limites_t1(1)),t2,limites_t2(1),limites_t2(2))
    

    elseif choice==3

        int(int(dot(FVdesp,ds),t1,limites_t1(1),limites_t1(1)),t2,limites_t2(1),limites_t2(2))
        
    elseif choice==4

        intVecLim(intVecLim(cross(FVdesp,ds),t1,limites_t1),t2,limites_t2)
        
    else

        fprintf('?????')

    end

end
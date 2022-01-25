while true
    choice=input('1.V(F).V(dl)\n 2.V(F)xV(dl) \n 3.dl\n\n: ');
    if choice==1
        
        int(dot(FVdesp,dR),t,limites_t(1),limites_t(2))
        break
        
    elseif choice==2

        int(cross(FVdesp,dR),t,limites_t(1),limites_t(2))
        break
        
    else

        int(ds,t,limites_t(1),limites_t(2))
        break

    end

end
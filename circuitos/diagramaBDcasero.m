function [datosx,datosy] = diagramaBDcasero(x,y,g,l1,l2,n,type)
% diagramaBDcasero(x,y,g,l1,l2,n,type)
% x lita con las frecuencias y listta con lo que que depende d ela
% frecuencia g es la funcion de ganacia depende de s, l1 l2 limites del
% analisis n es la cantiddada de puntos a evaluar

    syms s kk
    g(s)=g;
    frec=[];
    db=[];
    ang=[];
    k=1;
    frec=logspace(l1,l2,n);
    if type=='m'
    
        while k<=length(frec)
            db(k)=eval(20*log10( abs( g( frec(k)*i*2*pi ) ) ) );
            k=k+1;
        end

        semilogx(frec,db)
        hold on
        semilogx(x,y,'o')
        ylabel('magnitude (db)');

    elseif type=='a'

        while k<=length(frec)
    
            db(k)=eval(angle(g( frec(k)*i*2*pi )  ) );
            k=k+1;
        
        end

        semilogx(frec,db)
        hold on
        semilogx(x,y,'o')
        ylabel('phase (rad)');
        

    else
        error('diagrama de magnitud [m] diagrama de fase [a]')
    end
    xlabel('frequency (hz)');
    title('bode diagram')
    grid on
    
end


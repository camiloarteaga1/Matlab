function val = derivateAprox(D,F,a,h)
%valor de la derivada a F(x)
%   D es el orden de la derivada, a es el punto donde la derivada se va a
%   evaluar, h inversamente proporcional a la presicion 

    syms x
        f(x)=F;
    
    if D==1
        val=eval((f(a+h)-f(a-h))/(2*h));
    
    elseif D==2
    
        val=eval((f(a+h)-2*f(a)+f(a-h))/(h^2));
    
    else
    
        disp('solo funciona para 2 derivadas')
    end

end


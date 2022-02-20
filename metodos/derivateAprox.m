function val = derivateAprox(D,F,a,h)
%DERIVATEAPROX is an aproximation of the funtion F(x)
%   D is the order of the derivative a is the poiunt in wich the derivate
%   is going to be eval h is the presicion

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


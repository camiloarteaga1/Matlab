syms ds_u1(u1,u2,u3) ds_u2(u1,u2,u3) ds_u3(u1,u2,u3) u1_inf(u2) u1_sup(u2) u2_inf u2_sup u3_despejada(u1,u2)

if hayFE==1 
    fprintf('ingrese \n')
    u3_despejada(u1,u2)=input('u3(u1,u2)= ')
    u1_inf(u2)=input('limite inferior de u1: ')
    u1_sup(u2)=input('limite superior de u1: ')
    u2_inf=input('limite inferior de u2: ')
    u2_sup=input('limite superior de u2: ')
    ds_u1(u1,u2,u3)=(sqrt( (h1*gradFunEsc_u1)^2 + (h2*gradFunEsc_u2)^2 + (h3*gradFunEsc_u3)^2 )/(sqrt(gradFunEsc_u1^2+gradFunEsc_u2^2+gradFunEsc_u3^2)*(h3*gradFunEsc_u3)))*gradFunEsc_u1;
    ds_u2(u1,u2,u3)=(sqrt( (h1*gradFunEsc_u1)^2 + (h2*gradFunEsc_u2)^2 + (h3*gradFunEsc_u3)^2 )/(sqrt(gradFunEsc_u1^2+gradFunEsc_u2^2+gradFunEsc_u3^2)*(h3*gradFunEsc_u3)))*gradFunEsc_u2;
    ds_u3(u1,u2,u3)=(sqrt( (h1*gradFunEsc_u1)^2 + (h2*gradFunEsc_u2)^2 + (h3*gradFunEsc_u3)^2 )/(sqrt(gradFunEsc_u1^2+gradFunEsc_u2^2+gradFunEsc_u3^2)*(h3*gradFunEsc_u3)))*gradFunEsc_u3;

    Fxds=cross([fu1,fu2,fu3],[ds_u1,ds_u2,ds_u3]);
    Fxds_u1(u1,u2,u3)=Fxds(1);
    Fxds_u2(u1,u2,u3)=Fxds(2);
    Fxds_u3(u1,u2,u3)=Fxds(3);
    FDOTds(u1,u2,u3)=cross([fu1,fu2,fu3],[ds_u1,ds_u2,ds_u3]);
    while true 
    

    fprintf('Ingresar: \n 1. int(F.ds) \n 2. int(Fxds) \n Cualquier numero para salir');
    choice=input('\nOpcion: ');



   if choice==1


                int(int(FDOTds(u1,u2,u3_despejada(u1,u2)),u1,u1_inf,u2_sup),u2,u2_inf,u2_sup)


    elseif choice==2


            syms fXds_u1 fXds_u3 fXds_u2



                    fXds_u1=int(int(Fxds_u1(u1,u2,u3_despejada(u1,u2)),u1,u1_inf,u2_sup),u2,u2_inf,u2_sup);
                    fXds_u2=int(int(Fxds_u2(u1,u2,u3_despejada(u1,u2)),u1,u1_inf,u2_sup),u2,u2_inf,u2_sup);
                    fXds_u3=int(int(Fxds_u3(u1,u2,u3_despejada(u1,u2)),u1,u1_inf,u2_sup),u2,u2_inf,u2_sup);
                    fprintf('[fXl_u1,fXl_u2,fXl_u3]')
                    simplify([fXds_u1,fXds_u2,fXds_u3])
                    break



        
        
    else 
        
        break
        
        
    end
    
    
end


else
    fprintf('primero debe haber ingresado la funcion escalar y vectorial')
end



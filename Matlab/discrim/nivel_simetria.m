function nv_sim = nivel_simetria(imagens)
    k = 0;
    nv_sim = [];
    for z=1:size(imagens,1)
        k = k + 1;
        temp = immse(double(imagens{z}),fliplr(double(imagens{z})));
        aux = round(temp',3)/100;
        nv_sim = [nv_sim aux];        
    end
       nv_sim_max = max(nv_sim);
       
     for z=1:size(imagens,1)
        if nv_sim(z) <= round(nv_sim_max/11)
            nv_sim(z) = 1;
        elseif nv_sim(z) <= round(2*nv_sim_max/11)
            nv_sim(z) = 2;        
        elseif nv_sim(z) <= round(3*nv_sim_max/11)
            nv_sim(z) = 3;   
        elseif nv_sim(z) <= round(4*nv_sim_max/11)
            nv_sim(z) = 4;   
        elseif nv_sim(z) <= round(5*nv_sim_max/11)
            nv_sim(z) = 5;   
        elseif nv_sim(z) <= round(6*nv_sim_max/11)
            nv_sim(z) = 6;   
        elseif nv_sim(z) <= round(7*nv_sim_max/11)
            nv_sim(z) = 7;   
        elseif nv_sim(z) <= round(8*nv_sim_max/11)
            nv_sim(z) = 8;   
        elseif nv_sim(z) <= round(9*nv_sim_max/11)
            nv_sim(z) = 9;   
        elseif nv_sim(z) <= round(10*nv_sim_max/11)
            nv_sim(z) = 10;               
        else
            nv_sim(z) = 11;
        end
     end
     
    nv_sim = nv_sim';
end
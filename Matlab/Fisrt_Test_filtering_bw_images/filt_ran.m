function img_filt_ran = filt_ran(imagens)        
    k = 0; 
    for z = 1:1776
       k = k +1;
       temp_ran = rangefilt(imagens{z});
       img_filt_ran{k} = temp_ran;
    end
    img_filt_ran = img_filt_ran';
end
function [img_filt_ran,img_filt_std] = filt_std(imagens)        
    k = 0; 
    for z = 1:1776
       k = k +1;
       temp_std = stdfilt(imagens{z});
       img_filt_std{k} = temp_std;

    end
    img_filt_ran = img_filt_ran';
end
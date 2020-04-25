function [img_gb_mag,img_gb_phase] = filt_gabor(imagens,wavelenght,orientation)
    k = 0 ;
    for z = 1:1776
        [mag,phase] = imgaborfilt(imagens{z},wavelenght,orientation);
        k = k + 1;
        gabor_mag{k} = mag;
        gabor_phase{k} = phase;
    end
    gabor_mag = gabor_mag';
    gabor_phase = gabor_phase';
end
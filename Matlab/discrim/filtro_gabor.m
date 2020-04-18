function [gabor,gabor_mag,gabor_phase] = filtro_gabor(imagens,wavelenght,orientation)
    
    disp('Filtros de gabor')

    % Aplicação de filtros de gabor nas imagens, transformando
    % os pixels por fase e comprimento de onda
    k = 0 ;
    for z = 1:1776
        [mag,phase] = imgaborfilt(imagens{z},wavelenght,orientation);
        temp = [mag,phase];
        k = k + 1;
        gabor{k} = temp;
        gabor_mag{k} = mag;
        gabor_phase{k} = phase;
    end
    gabor = gabor';        
    gabor_mag = gabor_mag';
    gabor_phase = gabor_phase';
    
   
end
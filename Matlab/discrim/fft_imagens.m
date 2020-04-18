function fft_img = fft_imagens(imagens)

    disp('Transformada discreta de fourier')

    % Aplicação de filtros de gabor nas imagens, transformando
    % os pixels por fase e comprimento de onda
    k = 0 ;
    for z = 1:1776
        temp = fft(imagens{z});
        k = k + 1;
        fft_img{k} = temp;
    end
    fft_img = fft_img';


    
end
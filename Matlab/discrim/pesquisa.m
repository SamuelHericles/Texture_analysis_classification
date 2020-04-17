clc
% Carregar imagens e identificadores   
if evalin("base","exist('imagens') ~= 1")
    imagens = carrega_imagens();
end

% Soma e desvio padrão após aplicado filtro de gabor
if evalin("base","exist('gabor') ~= 1")
    gabor = filtro_gabor(imagens,4,90);
end

if evalin("base","exist('fft_img') ~= 1")
    fft_img = fft_imagens(imagens);
end


[F,C,POST] = lda(sum_std_gabor(gabor),identificadores());
resp = sum(C==identificadores())/size(C,1);
fprintf('Acurácia de %f \n',resp);
clear C;
clear F;
clear POST;

[F,C,POST] = lda(std_sum_imagem(imagens),identificadores());
resp = sum(C==identificadores())/size(C,1);
fprintf('Acurácia de %f \n',resp);






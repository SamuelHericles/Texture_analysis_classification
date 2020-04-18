clc
clear C

% Carregar imagens e identificadores   
if evalin("base","exist('imagens') ~= 1")
    imagens = carrega_imagens();
end

% Soma e desvio padrão após aplicado filtro de gabor
if evalin("base","exist('gabor') ~= 1")
    [gabor,gabor_mag,gabor_phase] = filtro_gabor(imagens,4,90);
end

if evalin("base","exist('fft_img') ~= 1")
    fft_img = fft_imagens(imagens);
end

for z = 1:1776
    imwrite(abs(real(fft_img{z})), 'fft.png'); 
end

[~,C,~] = lda(std_sum_gabor_phase(gabor_phase),identificadores());
fprintf('Acurácia de %f com gabor phase\n',sum(C==identificadores())/size(C,1));

[~,C,~] = lda(std_sum_gabor_mag(gabor_mag),identificadores());
fprintf('Acurácia de %f com gabor magnitude\n',sum(C==identificadores())/size(C,1));

[~,C,~] = lda(std_sum_fft(fft_img),identificadores());
fprintf('Acurácia de %f com fft\n',sum(C==identificadores())/size(C,1));

[~,C,~] = lda(sum_std_gabor(gabor),identificadores());
fprintf('Acurácia de %f com filtros de gabor\n',sum(C==identificadores())/size(C,1));

[~,C,~] = lda(std_sum_imagem(imagens),identificadores());
fprintf('Acurácia de %f com imagem bruta\n',sum(C==identificadores())/size(C,1));





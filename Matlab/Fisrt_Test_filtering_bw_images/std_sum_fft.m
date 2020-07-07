function X_std_sum_fft = std_sum_fft(fft_img)

    % Soma e desvio padrão após os filtros de gabor
    X_std_sum_fft = [];
    for z = 1:1776
        temp = [sum(sum(real(fft_img{z})));std(sum(real(fft_img{z})))];
        X_std_sum_fft = [X_std_sum_fft,temp];
    end
    X_std_sum_fft = X_std_sum_fft';

end
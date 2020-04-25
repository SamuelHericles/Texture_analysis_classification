function X_gabor_mag = std_sum_gabor_mag(gabor_mag)

    % Soma e desvio padrão após os filtros de gabor
    X_gabor_mag = [];
    for z = 1:1776
        temp = [sum(sum(gabor_mag{z}));std(sum(gabor_mag{z}))];
        X_gabor_mag = [X_gabor_mag,temp];
    end
    X_gabor_mag = X_gabor_mag';
end
function X_gabor = sum_std_gabor(gabor)    
    % Soma e desvio padrão após os filtros de gabor
    X_gabor = [];
    for z = 1:1776
        temp = [sum(sum(gabor{z}));std(sum(gabor{z}))];
        X_gabor = [X_gabor,temp];
    end
    X_gabor = X_gabor';
end
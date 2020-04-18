function X_gabor_phase = std_sum_gabor_phase(gabor_phase)

    % Soma e desvio padrão após os filtros de gabor
    X_gabor_phase = [];
    for z = 1:1776
        temp = [sum(sum(gabor_phase{z}));std(sum(gabor_phase{z}))];
        X_gabor_phase = [X_gabor_phase,temp];
    end
    X_gabor_phase = X_gabor_phase';
end
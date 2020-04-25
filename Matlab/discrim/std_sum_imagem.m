function X_std_sum = std_sum_imagem(imagens)
    
    % Média de cada imagem
    X_std_sum = [];
    for z = 1:1776
        temp = [sum(sum(imagens{z}));std(sum(imagens{z}))];
        X_std_sum = [X_std_sum,temp];
    end
    X_std_sum = X_std_sum';
end
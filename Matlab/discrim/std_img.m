function X_var= std_img(imagens)    
    % Soma e desvio padrão após os filtros de gabor
    X_var = [];
    for z = 1:size(imagens,1)
        temp = round(std2((imagens{z})));
        X_var = [X_var,temp];
    end
    
    X_max = max(X_var);
    
    for z = 1:size(imagens,1)
        if X_var(z) < round(X_max/11)
            X_var(z) = 1;
 
        elseif X_var(z) < round(2*X_max/11)
            X_var(z) = 2;
               
        elseif X_var(z) < round(3*X_max/11)
            X_var(z) = 3;
        
        elseif X_var(z) < round(4*X_max/11)
            X_var(z) = 4;
        
        elseif X_var(z) < round(5*X_max/11)
            X_var(z) = 5;
        
        elseif X_var(z) < round(6*X_max/11)
            X_var(z) = 6;
        
        elseif X_var(z) < round(7*X_max/11)
            X_var(z) = 7;
        
        elseif X_var(z) < round(8*X_max/11)
            X_var(z) = 8;
        
        elseif X_var(z) < round(9*X_max/11)
            X_var(z) = 9;
       
        elseif X_var(z) < round(10*X_max/11)
            X_var(z) = 10;
     
        else
            X_var(z) = 11;
        end
    end
    
    X_var = X_var';
end
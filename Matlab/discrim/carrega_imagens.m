function imagens = carrega_imagens()
    group = 111;
    count = 16;
    k = 0;
    for aux1 = 1:group
        if(aux1<10)
            num1 = strcat('Brodatz/c00',num2str(aux1)); 
        elseif(aux1>=10 && aux1<100)
            num1 = strcat('Brodatz/c0',num2str(aux1));
        elseif(aux1>99)
            num1 = strcat('Brodatz/c',num2str(aux1));
        end

        for aux2 = 1:count

          if(aux2<10)
              num2 = strcat('_00',num2str(aux2),'.png');
          else
              num2 = strcat('_0',num2str(aux2),'.png');
          end
          nome_imagem = strcat(num1,num2);
          disp(nome_imagem);

          k = k + 1;
          imagens{k} = imread(nome_imagem);
        end

    end
    imagens = imagens';
    fprintf('Imagens carregadas\n\n');
    
end
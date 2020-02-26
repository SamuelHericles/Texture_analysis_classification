clc
clear
% 1 - Teste para pegar uma imagem e capturar a matriz de rgb de 0 á 255.
%A = imread('Brodatz\c001_001.png');
%disp(A)
%[linhas,colunas]=size(A);
%disp(linhas);
%disp(colunas);

% 2 - Carregar imagens de cada grupo

group = 111;
count = 16;
k = 0;

for aux1 = 1:group
    
    if(aux1<10)
        num1 = strcat('Brodatz\c00',num2str(aux1)); 
    elseif(aux1>=10 && aux1<100)
        num1 = strcat('Brodatz\c0',num2str(aux1));
    elseif(aux1>99)
        num1 = strcat('Brodatz\c',num2str(aux1));
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
      imanges{k} = imread(nome_imagem);
    end
    
end
imanges = imanges';
fprintf('Imagens carregadas\n\n');

% 3 - Aplicação do algoritmo LDA(Análise de discriminate linear)

% Gerar K indices das matrizes
K = [];
for c = 1:111
    K = [K,1:16];
end
K = K';

% Média de cada imagem
X = [];
for z = 1:1776
    temp = [sum(sum(imanges{z}));std(sum(imanges{z}))];
    X = [X,temp];
end
X = X';

[F,C,POST] = lda(X,K);

resp = sum(C==K)/size(C,1);
fprintf('Acurácia de %f \n',resp);





clear group
clear aux1
clear aux2
clear c
clear count
clear k
clear nome_imagem
clear num1
clear num2
clear z
clear temp
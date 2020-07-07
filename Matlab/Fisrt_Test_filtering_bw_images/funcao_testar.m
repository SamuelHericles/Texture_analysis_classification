function [C_max] = funcao_testar(X)
   
   d = possibilidades(size(X,2));
   teste = [];
   C_max = 0;
   i_max = 0;
   for i = 1:size(d,1)-1
       fprintf("Teste %d -> seq: ",i);
       teste = [];
       for j = 1:size(d,2)
           if d(i,j) ~=0
            aux = d(i,j);
            teste = [teste X(:,aux)]; 
            fprintf("%d,",aux);
           end
       end
        
       %Aplicar o LDA para classifica√ß√£o
       [~,C,~] = lda(teste,identificadores());
       a = C;
       fprintf(' Acur·cia de %f\n',sum(C==identificadores())/size(C,1));
       C_temp = sum(C==identificadores())/size(C,1);
       
       if C_max < C_temp
           C_max = C_temp;
           i_max = i;
       end
       
   end
  
   fprintf('Maior acur·cia de %f no teste %d\n',C_max,i_max);
end
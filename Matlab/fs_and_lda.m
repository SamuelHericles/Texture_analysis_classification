function [] = fs_and_lda(X,images,classes)
%% Axiliar variables
    
   % Get the length feature vector 
   d = possibilities(size(X,2)); % The brute force feacture selection
   
   % Initialize count test vector 
   C_max = 0;
   i_max = 0;

%% For Cicle of tests
   for i = 1:size(d,1)-1
       fprintf("Test %d -> seq: ",i);
       test = [];
       for j = 1:size(d,2)
           if d(i,j) ~=0
            aux = d(i,j);
            test = [test X(:,aux)]; 
            fprintf("%d,",aux);
           end
       end
        
%% Apply LDA algorithm here

       % Get just C vector values
       [~,C,~] = lda(test,identifiers(classes,images));
       
       % Accuracy test
       fprintf(' Accuracy of %f\n',sum(C==identifiers(classes,images))/size(C,1));
       
%% Check the best result
       C_temp = sum(C==identifiers(classes,images))/size(C,1);
       
       if C_max < C_temp
           C_max = C_temp;
           i_max = i;
       end
       
   end
%% Output the best Result
   fprintf('The best accuracy was %f in %d test\n',C_max,i_max);
end
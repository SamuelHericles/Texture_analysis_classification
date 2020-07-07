function feature_hist = walk_image(images) 
   k = 0;
   skw_hist_v  = [];
   skw_hist_h  = [];
   
   for z = 1:size(images,1)
    disp(z);
    k = k +1;
%% Assign a vectors for line measures
count_h = zeros(1,size(images{z},1)+1);
count_v = zeros(1,size(images{z},1)+1);

%% Measure line in horizontal direction
    for i = 1:size(images{z},1)
        aux=0;
        for j = 1:size(images{z},2)
          if images{z}(j,i) == 1
            aux = aux + 1 ;    
          elseif images{z}(j,i) == 0
            count_h(aux+1) = count_h(aux+1) + 1;
            aux = 0;
          end
        end
        count_h(aux+1) = count_h(aux+1) + 1;
    end
%% Measure line in vertical direction
    for i = 1:size(images{z},1)
        aux=0;
        for j = 1:size(images{z},2)
          if images{z}(i,j) == 1
            aux = aux + 1 ;    
          elseif images{z}(i,j) == 0
            count_v(aux+1) = count_v(aux+1) + 1;
            aux = 0;
          end
        end
        count_v(aux+1) = count_v(aux+1) + 1;
    end
%% Removing the firsts values on the vectors

    hist_h{k}    =  count_h;
    skw_hist_h   =  [skw_hist_h  skewness(hist_h{k})];

    hist_v{k}    =  count_v;
    skw_hist_v   =  [skw_hist_v  skewness(hist_v{k})];

%% Ploting the results
    f = figure(1);
    clf(f);
    subplot(2,2,1)
    histogram(count_h)
    title('Horizontal direction')
    subplot(2,2,2)
    histogram(count_v)
    title('Vertical direction')
    subplot(2,2,3)
    imshow(images{z})
    title(['image ',num2str(z)])    
end

%% Store results
   feature_hist = [];
   
   feature_hist = [feature_hist skw_hist_h'];
   feature_hist = [feature_hist skw_hist_v'];
   
end
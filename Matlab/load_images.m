function imagens = load_images(folder,extesion)
%% Load images
    
    % Auxiliar variable
    k = 0;
    files = dir(strcat(folder,extesion));
    
    %Get images in Brodatz directory
    for aux1 = 1:size(files,1)           
            
        %The images will stay in var with cells type 
        k = k + 1;
        imagens{k} = imread(strcat(folder,files(aux1).name));
        disp(strcat(folder,files(aux1).name))
    end
%% Output images
    imagens = imagens';
    fprintf('Images loaded\n\n');
    
end
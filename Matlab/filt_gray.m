%% Filter images with rgb2gray() filter
function imagem_pb = filt_pb(imagens)
    k = 0;
    for z = 1:size(imagens,1)
        k = k + 1;
        temp = rgb2gray(imresize(imagens{z}, [128 128]));
        imshow(temp);
        imagem_pb{k} = temp';
    end
    imagem_pb = imagem_pb';
end
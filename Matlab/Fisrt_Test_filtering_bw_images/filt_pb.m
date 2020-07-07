function imagem_pb = filt_pb(imagens)
    k = 0;
    for z = 1:1776
        k = k + 1;
        temp = im2bw(imagens{z});
        imshow(temp);
        imagem_pb{k} = temp';
    end
    imagem_pb = imagem_pb';
end
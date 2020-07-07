function [Gmag,Gdir] = gradiente(imagens)
    x = 1:1:128;
    y = 1:1:128;
    for count = 1:1776
        z = imagens{count};
        [Gmag,Gdir] = imgradient(imagens{count}, 'prewitt');
        %hold off
        f = figure(1);
        clf(f);
        hold on
        contour(x,y,z);
        quiver(x,y,Gmag,Gdir);
    end
end
function img_bw_area = area_bw(imagens)
    k = 0;
    img_bw_area = [];
    for z = 1:1776
       k = k + 1;
       temp = round(bwarea(imagens{z}));
       img_bw_area = [img_bw_area,temp];
    end
    
    var_bw_area_max = max(img_bw_area);
        
    for z = 1:size(imagens,1)
        if img_bw_area(z) < round(var_bw_area_max/11)
            img_bw_area(z) = 1;
        elseif img_bw_area(z) < round(2*var_bw_area_max/11)
            img_bw_area(z) = 2;
        elseif img_bw_area(z) < round(3*var_bw_area_max/11)
            img_bw_area(z) = 3;
        elseif img_bw_area(z) < round(4*var_bw_area_max/11)
            img_bw_area(z) = 4;
        elseif img_bw_area(z) < round(5*var_bw_area_max/11)
            img_bw_area(z) = 5;
        elseif img_bw_area(z) < round(6*var_bw_area_max/11)
            img_bw_area(z) = 6;
        elseif img_bw_area(z) < round(7*var_bw_area_max/11)
            img_bw_area(z) = 7;
        elseif img_bw_area(z) < round(8*var_bw_area_max/11)
            img_bw_area(z) = 8;
        elseif img_bw_area(z) < round(9*var_bw_area_max/11)
            img_bw_area(z) = 9;
        elseif img_bw_area(z) < round(10*var_bw_area_max/11)
            img_bw_area(z) = 10;
        else
            img_bw_area(z) = 11;
        end
    end
    
    img_bw_area = img_bw_area';
end
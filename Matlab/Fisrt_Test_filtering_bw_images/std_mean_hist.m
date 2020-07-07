function [media_hist,std_hist] = std_mean_hist(hist_simples)
    temp = hist_simples;
    aux = [];
    k=0;
    for z = 1:size(temp,2)
        k=k+1;
        aux = [aux;temp{k}];
    end

    media_hist = [];
    std_hist = [];
    k=0;
    for z = 1:size(temp,2)
        k=k+1;
        temporario =  aux(k,:);
        temporario =  temporario(temporario ~= max(temporario));
        temporario =  fillmissing(temporario,'movmedian',10);

        media_hist = [media_hist mean(temporario)];
        std_hist   = [std_hist   std(temporario)];
    end


    media_hist = media_hist';
    media_hist = fillmissing(media_hist,'movmedian',40);
    std_hist   = std_hist';
    std_hist   = fillmissing(std_hist,'movmedian',40);
end
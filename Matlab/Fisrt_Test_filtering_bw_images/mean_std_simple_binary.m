function [media_hist_4,std_hist_4] = mean_std_simple_binary(hist)
temp = hist;
aux_4 = [];
k=0;
for z = 1:size(temp,2)
    k=k+1;
    aux_4 = [aux_4;temp{k}];
end

media_hist_4 = [];
std_hist_4 = [];
k=0;
for z = 1:size(temp,2)
    k=k+1;
    disp(k);
    temporario = aux_4(k,:);
    temporario = temporario(temporario ~= max(temporario))+1;
    temporario  =  fillmissing(temporario,'previous');

    media_hist_4 = [media_hist_4 mean(temporario)];
    std_hist_4   = [std_hist_4   std(temporario)];
end

media_hist_4 = media_hist_4';
media_hist_4 = fillmissing(media_hist_4,'movmedian',40);
std_hist_4 = std_hist_4';
std_hist_4 = fillmissing(std_hist_4,'movmedian',40);

end
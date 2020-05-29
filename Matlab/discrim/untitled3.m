clc
temp = hist_simples_4;
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
    temporario = aux_4(k,:);
    temporario = temporario(temporario ~= max(temporario))+1;
    temporario  =  fillmissing(temporario,'previous');

    media_hist_4 = [media_hist_4 mean(temporario)];
    std_hist_4   = [std_hist_4   std(temporario)];
end

temp = hist_simples_8;
aux_8 = [];
k=0;
for z = 1:size(temp,2)
    k=k+1;
    aux_8 = [aux_8;temp{k}];
end

media_hist_8 = [];
std_hist_8 = [];
k=0;
for z = 1:size(temp,2)
    k=k+1;
    temporario = aux_8(k,:);
    temporario = temporario(temporario ~= max(temporario));
    temporario  =  fillmissing(temporario,'movmedian',10);

    media_hist_8 = [media_hist_8 mean(temporario)];
    std_hist_8   = [std_hist_8   std(temporario)];
end

media_hist_8 = media_hist_8';
media_hist_8 = fillmissing(media_hist_8,'movmedian',40);
std_hist_8 = std_hist_8';
std_hist_8 = fillmissing(std_hist_8,'movmedian',40);

media_hist_4 = media_hist_4';
media_hist_4 = fillmissing(media_hist_4,'movmedian',40);
std_hist_4 = std_hist_4';
std_hist_4 = fillmissing(std_hist_4,'movmedian',40);



clear k;
clear z;
clear temp;
clear temp2;
clear temporario;
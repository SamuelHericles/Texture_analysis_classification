function images_pb_wiener = filt_wiener(imagens_pb)   
%     avg = 2;
%     figure(1)
%     subplot(4,4,1),
%     med1 = medfilt2(imagens_pb{1});
%     fs_filter1 = int32(filter2(fspecial('average',avg),med1));
%     corr1 = im2bw((imagens_pb{1} + double(fs_filter1)/2));
%     wie1 = wiener2(imagens_pb{1},[2 1]);
%     imshow([imagens_pb{1},corr1,wie1]);
%     title('1');
%     
%     subplot(4,4,2),
%     med2 = medfilt2(imagens_pb{17});
%     fs_filter2 = int32(filter2(fspecial('average',avg),med2));
%     corr2 = im2bw((imagens_pb{17} + double(fs_filter2)/2));
%     wie2 = wiener2(imagens_pb{17},[2 1]);
%     imshow([imagens_pb{1},corr2,wie2]);
%     title('2');
%     
%     subplot(4,4,3),
%     med3 = medfilt2(imagens_pb{32});
%     fs_filter3 = int32(filter2(fspecial('average',avg),med3));
%     corr3 = im2bw((imagens_pb{32} + double(fs_filter3)/2));
%     wie3 = wiener2(imagens_pb{32},[2 1]);
%     imshow([imagens_pb{32},corr3,wie3]);
%     title('3');
% 
%     subplot(4,4,4),
%     med4 = medfilt2(imagens_pb{48});
%     fs_filter4 = int32(filter2(fspecial('average',avg),med4));
%     corr4 = im2bw((imagens_pb{48} + double(fs_filter4)/2));
%     wie4 = wiener2(imagens_pb{48},[2 1]);
%     imshow([imagens_pb{48},corr4,wie4]);
%     title('4');
% 
%     subplot(4,4,5),
%     med5 = medfilt2(imagens_pb{64});
%     fs_filter5 = int32(filter2(fspecial('average',avg),med5));
%     corr5 = im2bw((imagens_pb{64} + double(fs_filter5)/2));
%     wie5 = wiener2(imagens_pb{64},[2 1]);
%     imshow([imagens_pb{64},corr5,wie5]);
%     title('5');
% 
%     subplot(4,4,6),
%     med6 = medfilt2(imagens_pb{80});
%     fs_filter6 = int32(filter2(fspecial('average',avg),med6));
%     corr6 = im2bw((imagens_pb{80} + double(fs_filter6)/2));
%     wie6 = wiener2(imagens_pb{80},[2 1]);
%     imshow([imagens_pb{80},corr6,wie6]);
%     title('6');
% 
%     subplot(4,4,7),       
%     med7 = medfilt2(imagens_pb{96});
%     fs_filter7 = int32(filter2(fspecial('average',avg),med7));
%     corr7 = im2bw((imagens_pb{96} + double(fs_filter7)/2));
%     wie7 = wiener2(imagens_pb{96},[2 1]);
%     imshow([imagens_pb{96},corr7,wie7]);
%     title('7');
% 
%     subplot(4,4,8),
%     med8 = medfilt2(imagens_pb{102});
%     fs_filter8 = int32(filter2(fspecial('average',avg),med8));
%     corr8 = im2bw((imagens_pb{102} + double(fs_filter8)/2));
%     wie8 = wiener2(imagens_pb{102},[2 1]);
%     imshow([imagens_pb{102},corr8,wie8]);
%     title('8');
% 
%     subplot(4,4,9),
%     med9 = medfilt2(imagens_pb{118});
%     fs_filter9 = int32(filter2(fspecial('average',avg),med9));
%     corr9 = im2bw((imagens_pb{118} + double(fs_filter9)/2));
%     wie9 = wiener2(imagens_pb{118},[2 1]);
%     imshow([imagens_pb{118},corr9,wie9]);
%     title('9');
%     
%     subplot(4,4,10),
%     med10 = medfilt2(imagens_pb{136});
%     fs_filter10 = int32(filter2(fspecial('average',avg),med10));
%     corr10 = im2bw((imagens_pb{136} + double(fs_filter10)/2));
%     wie10 = wiener2(imagens_pb{136},[2 1]);
%     imshow([imagens_pb{136},corr10,wie10]);
%     title('10');
% 
%     subplot(4,4,11),
%     med11 = medfilt2(imagens_pb{152});
%     fs_filter11 = int32(filter2(fspecial('average',avg),med11));
%     corr11 = im2bw((imagens_pb{152} + double(fs_filter11)/2));
%     wie11 = wiener2(imagens_pb{152},[2 1]);
%     imshow([imagens_pb{152},corr11,wie11]);
%     title('11');
% 
%     subplot(4,4,12),
%     med12 = medfilt2(imagens_pb{168});
%     fs_filter12 = int32(filter2(fspecial('average',avg),med12));
%     corr12 = im2bw((imagens_pb{168} + double(fs_filter12)/2));
%     wie12= wiener2(imagens_pb{168},[2 1]);
%     imshow([imagens_pb{168},corr12,wie12]);
%     title('12');
%     
%     subplot(4,4,13),
%     med13 = medfilt2(imagens_pb{184});
%     fs_filter13 = int32(filter2(fspecial('average',avg),med13));
%     corr13 = im2bw((imagens_pb{184} + double(fs_filter13)/2));
%     wie13 = wiener2(imagens_pb{184},[2 1]);
%     imshow([imagens_pb{184},corr13,wie13]);
%     title('1');
% 
%     subplot(4,4,14),
%     med14 = medfilt2(imagens_pb{200});
%     fs_filter14 = int32(filter2(fspecial('average',avg),med14));
%     corr14 = im2bw((imagens_pb{200} + double(fs_filter14)/2));
%     wie14 = wiener2(imagens_pb{200},[2 1]);
%     imshow([imagens_pb{200},corr14,wie14]);
%     title('14');
% 
%     subplot(4,4,15),
%     med15 = medfilt2(imagens_pb{216});
%     fs_filter15 = int32(filter2(fspecial('average',avg),med15));
%     corr15 = im2bw((imagens_pb{216} + double(fs_filter15)/2));
%     wie15 = wiener2(imagens_pb{216},[2 1]);
%     imshow([imagens_pb{216},corr15,wie15]);
%     title('15');
% 
%     subplot(4,4,16),
%     med16 = medfilt2(imagens_pb{232});
%     fs_filter16 = int32(filter2(fspecial('average',avg),med16));
%     corr16 = im2bw((imagens_pb{232} + double(fs_filter16)/2));
%     wie16 = wiener2(imagens_pb{232},[2 1]);
%     imshow([imagens_pb{232},corr16,wie16]);
%     title('16');
    
    k = 0; 
    for z = 1:1776
     k = k + 1;
     temp = wiener2(imagens_pb{z},[2 1]);
     images_pb_wiener{k} = temp';
     imshow(temp);
    end
    
    images_pb_wiener = images_pb_wiener';
    
    
end
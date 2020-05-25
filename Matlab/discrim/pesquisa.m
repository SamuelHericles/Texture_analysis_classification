%{
                   FEDERAL UNIVERSITY OF CEARA
                         CAMPUS - SOBRAL
                COMPUTER ENGINEERING DEPARTMENT
                 SAMUEL HERICLES SOUZA SILVERIA
               TEXTURE ANALYSIS AND CLASSIFICATION

                         METHODOLOGY

  |------------| |-----------| |-----------| |--------------------------|
  | FILTERING  |>|  FEATURE  |>|  FEATURE  |>| CLASSIFICATINO ALGORITHM | 
  |------------| | EXTRATION | | SELECTION | |         (LDA)            | 
                 |-----------| |-----------| |--------------------------|                  
%}
clc
%% Load images
if evalin("base","exist('images') ~= 1")
    images = load_images();
end
%% Filtering
bool_img_pb = evalin("base","exist('img_pb') ~= 1");
bool_img_pb_wiener = evalin("base","exist('img_pb_wiener') ~= 1");
if bool_img_pb && bool_img_pb_wiener
    
    %Black and white filter[im2bw()]
    img_pb = filt_pb(images);
    
    %Wiener's filter[wiener2()]
    img_pb_wiener = filt_wiener(images);
    
    %Standard desviation filter[stdfilt()]
    img_filt_std = filt_std(images);
    
    %Range filter[rangefilt()]
    img_filt_ran = filt_ran(images);
    
    %Gabor's filter[imgaborfilt()]
    [img_gb_mag,img_gb_phase] = filt_gabor(images,4,90);

end
%% Image compression
if evalin("base","exist('ass1') ~= 1")
    %PCA(principal component analysis)[pca()]
    compress_img = filt_pca(images);
    compress_img_pb = filt_pca(img_pb);
    compress_img_pb_wiener = filt_pca(img_pb_wiener); 
    
    compress_img_std = filt_pca(img_filt_std);
    compress_img_ran = filt_pca(img_filt_ran);
    compress_img_gb_mag = filt_pca(img_gb_mag);
    compress_img_gb_phase = filt_pca(img_gb_phase);
end
%% Features vector
if evalin("base","exist('X') ~= 1")
    X = []; 
    X = [X  area_bw(imagens_pb_wiener)];%-----
    X = [X  area_bw(imagens_pb)];%------------
    X = [X  area_bw(img_filt_std)];%----------    
    X = [X  nivel_simetria(images)]; %-------
    
end
%{
                    FEDERAL UNIVERSITY OF CEARA
                         CAMPUS - SOBRAL
                   COMPUTER ENGINEER ING DEPARTMENT
                   SAMUEL HERICLES SOUZA SILVERIA
                 TEXTURE ANALYSIS AND CLASSIFICATION

                         METHODOLOGY

  |------------| |-----------| |-----------| |--------------------------|
  | FILTERING  |>|  FEATURE  |>|  FEATURE  |>| CLASSIFICATION ALGORITHM | 
  |------------| | EXTRATION | | SELECTION | |         (LDA)            | 
                 |-----------| |-----------| |--------------------------|                  
%}
clc
%% Initial conditions

% Check if the images was loaded
bool_img_pb = evalin("base","exist('img_pb') ~= 1");

% Check if the black and white images was loaded
bool_img_pb_wiener = evalin("base","exist('img_pb_wiener') ~= 1");
%% Load images

if evalin("base","exist('images') ~= 1")
    
    %Load Brodatz's images
    images = load_images('Vistex/','*.ppm');
    
end
%% Filtering

if bool_img_pb && bool_img_pb_wiener

    %Black and white filter
    img_pb = filt_gray(images);
    
end
%% Feature Extraction

feature_hist = walk_image(img_pb);

clc
%% Features vector

X = []; 
X = [X feature_hist(:,1)];
X = [X feature_hist(:,2)];

%% Feature Selection(Brute Force) and LDA algorithm

% X -> Feature vector.
% number of images per class.
% number of class.
% For example: Brodatz have 111 clases with 16 images each.

fs_and_lda(X,25,3);
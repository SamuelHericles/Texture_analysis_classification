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

%% Initial conditions
bool_img_pb = evalin("base","exist('img_pb') ~= 1");
bool_img_pb_wiener = evalin("base","exist('img_pb_wiener') ~= 1");
%% Load images
if evalin("base","exist('images') ~= 1")
    images = load_images();
end
%% Filtering
if bool_img_pb && bool_img_pb_wiener
    
    %Black and white filter[im2bw()]
    img_pb = filt_pb(images);
    
end
%% Tests 
% feature_hist = fake_graph_deep(img_pb);
%% Features vector
%if evalin("base","exist('X') ~= 1") end
X = []; 

% X = [X  feature_hist(:,1)]; 
% X = [X  feature_hist(:,2)];
% X = [X  feature_hist(:,3)];
% X = [X  feature_hist(:,4)];
X = [X  feature_hist(:,5)];
X = [X  feature_hist(:,6)];   
% X = [X  feature_hist(:,7)];
% X = [X  feature_hist(:,8)];
% X = [X  feature_hist(:,9)];
% X = [X  feature_hist(:,10)];



funcao_testar(X)

%% If i put a zero or anyone number vector the model gain 100% acc

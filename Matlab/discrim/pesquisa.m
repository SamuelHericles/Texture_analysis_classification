%{
                  UNIVERSIDADE FEDERAL DO CEARÁ
                        CAMPUS - SOBRAL
             DEPARTAMENTO DE ENGENHARIA DA COMPUTÇÃO
                SAMUEL HERICLES SOUZA SILVERIA
              ANALISE E CLASSIFICAÇÃO DE TEXTURAS

                         METODOLOGIA

|------------|   |------------------|   |--------------------------|
| FILTRAGEM  |-->|   EXTRAÇÃO DE    |-->| ALGORITMO DE CLASSICAÇÃO |--  
|------------|   | CARACTERÍSITCAS  |   |         (LDA)            | 
                 |------------------|   |--------------------------|  

                 |------------------|               ^
             --> |    SELEÇÃO DE    |---------------|
                 | CARACTERÍSTICAS  |
                 |------------------|
%}

clc

% Carregar imagens   
if evalin("base","exist('imagens') ~= 1")
    
    %Imagens na pasta Brodastz
    imagens = carrega_imagens();

end

%Filtragem 
if evalin("base","exist('img_pb') ~= 1") && evalin("base","exist('img_pb_wiener') ~= 1")
    
    %Filtro preto e branco[im2bw()]
    img_pb = filt_pb(imagens);
    
    %Filtro wiener[wiener2()]
    img_pb_wiener = filt_wiener(imagens);
    
    %Filtro desvio padrão[stdfilt()]
    img_filt_std = filt_std(imagens);
    
    %Filtro de intervalo[rangefilt()]
    img_filt_ran = filt_ran(imagens);
    
    %Fitlro de gabor[imgaborfilt()]
    [img_gb_mag,img_gb_phase] = filt_gabor(imagens,4,90);

end

%Compressão de imagens
if evalin("base","exist('ass1') ~= 1")
    %PCA(principal component analysis)[pca()]
    compress_img = filt_pca(imagens);
    compress_img_pb = filt_pca(img_pb);
    compress_img_pb_wiener = filt_pca(img_pb_wiener); 
    
    
    compress_img_std = filt_pca(img_filt_std);
    compress_img_ran = filt_pca(img_filt_ran);
    compress_img_gb_mag = filt_pca(img_gb_mag);
    compress_img_gb_phase = filt_pca(img_gb_phase);
end

if evalin("base","exist('X') ~= 1")
    X = []; 
    X = [X  area_bw(imagens_pb_wiener)];%-----
    X = [X  area_bw(imagens_pb)];%------------
    X = [X  area_bw(img_filt_std)];%----------    
    X = [X  nivel_simetria(imagens)]; %-------
    
end

%funcao_testar(X);



%%
%{
  Funções para analisar

    Filters(link:https://www.mathworks.com/help/images/linear-filtering.html)

        Design Image Filters

            fspecial	Create predefined 2-D filter
    
        Basic Image Filtering in the Spatial Domain

           imfilter	    N-D filtering of multidimensional images

           roifilt2	    Filter region of interest (ROI) in image

           wiener2	    2-D adaptive noise-removal filtering

           medfilt2	    2-D median filtering

           modefilt	    2-D and 3-D mode filtering

           maxhessiannorm	Maximum of Frobenius norm of Hessian of
                                matrix

        Edge-Preserving Filtering

           imbilatfilt	Bilateral filtering of images with Gaussian
                            kernels

        Filtering By Property Characteristics

            bwareafilt	    Extract objects from binary image by size

        Integral Image Domain Filtering

            integralBoxFilter	2-D box filtering of integral images
        
        my...

  - Feature Extraction

        mean
        min
        max
        std
        matrix histogram
        symmetry 1/4 and 1/2
        poligyn
        fibrosidade
        heterogeneity
        homogeneity
        deep
        granularity
        densety
        variance
        smoothnesse
        uniformy
        third moment
        Entropy        
        Histogram of oriented gradients (HOG)
        Speeded-up robust features (SURF)
        Local binary patterns (LBP)
        Haar wavelets
        sum of absolute diffenreces
        sum of squared differences
        normalized cross-correlation
        gradient
        curves detect
        generate others features
            pca
            factor analysis
            nonnegative matrix factorization  
            barttest	Teste de Bartlett
            canoncorr	Correlação canônica
            pca	Análise de componentes principais de dados brutos
            pcares	Resíduos da análise de componentes principais
            ppca	Análise probabilística de componentes principais
            factoran	Análise fatorial
            rotatefactors	Rodar cargas fatoriais
    
  - Feature Selection 

        neighborhood component analysis (NCA) https://www.mathworks.com/help/stats/fsrnca.html
        lasso and elastic nets https://www.mathworks.com/help/stats/lasso.html
        Analysis of variance(ANNOVA)https://www.mathworks.com/help/stats/analysis-of-variance-and-covariance.html
        Discrete correlation https://www.mathworks.com/help/matlab/ref/xcorr.html
        Correlaction feature selection(CFS)https://www.mathworks.com/matlabcentral/fileexchange/72177-feature-selection

    
%}


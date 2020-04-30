%{
                   FEDERAL UNIVERSITY OF CEARA
                         CAMPUS - SOBRAL
                COMPUTER ENGINEERING DEPARTMENT
                 SAMUEL HERICLES SOUZA SILVERIA
               TEXTURE ANALYSIS AND CLASSIFICATION

                         METHODOLOGY

|------------| |-----------| |--------------------------| |-----------|
| FILTERING  |>|  FEATURE  |>| CLASSIFICATINO ALGORITHM |>|  FEATURE  |  
|------------| | EXTRATION | |         (LDA)            | | SELECTION |
               |-----------| |--------------------------| |-----------|                 
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
%% Test in LDA algorithm
%funcao_testar(X);
%%
%{ 
Analisys about literature
    Filters
       link:https://www.mathworks.com/help/images/linear-filtering.html

       fspecial -
           Create predefined 2-D filter

       imfilter - 
            N-D filtering of multidimensional images

       roifilt2	- 
            Filter region of interest (ROI) in image

       wiener2 - 
            2-D adaptive noise-removal filtering

       medfilt2 - 
            2-D median filtering

       modefilt - 
            2-D and 3-D mode filtering

       maxhessiannorm - 
            Maximum of Frobenius norm of Hessian of matrix

       imbilatfilt - 
            Bilateral filtering of images with Gaussian kernels

       bwareafilt - 
            Extract objects from binary image by size

       integralBoxFilter - 
            2-D box filtering of integral images
       
  --Feature Extraction--

    --Estatistics features--

        Mean - 
            Sum of divide observations divides by number obsevations.
        
        Min - 
            Minium value of a observations.
        
        Max - 
            Maximum value of a observations.
        
        Std - 
            How scattered is your observations.
        
        Variance - 
            How scattered is your mean about the datas.

        Variations's coeficient - 
            Measure of variability relative calculate with the percent.

        Asymmetry - 
            Measure the degree sihtf in normal distribuition.
       
        MSSD - 
            Sucessive Differences to the Mean Square of a amoung numbers.
        
        Third moment - 
            Measures about probality distribuition.

        Entropy - 
            tsallis's entropy.

        kutorsis - 
            Measured in a way that characterizes the flattening of the cur-
            ve of the probability distribution function. 
        
        Cross-correlation - 
            Is a measure of similarity of two series as a function of the
            displacement of one relative to the other.  

        Smoothness - 
            Of a density function is a measure which determines how many
            times the density function can be differentiated.
        
    --Images Features--

        Measuse area

        Compare symmetry 1/4 and 1/2

        Detect poligyn
        
        Fibrosity
        
        Heterogeneity
        
        Homogeneity
        
        Deep
        
        Granularity
        
        Densety
        
        Curves detect

        Clarity

    --Others Features extrations--

        Matrix histogram - 
            Calculates the histogram for the grayscale image.

        Histogram of oriented gradients (HOG) - 
            Used for detect objects, the technique counts occurrences 
            of gradient orientation in localized portions of an image,
            similar the shape context and others.

        Speeded-up robust features (SURF) - 
            To detect interest points, uses an integer approximation of
            the determinant of Hessian blob detector, which can be compu-
            ted with 3 integer operations using a precomputed integral
            image. Its feature descriptor is based on the sum of the 
            Haar wavelet response around the point of interest. 
        
        Local binary patterns (LBP) - 
            Is the particular case of the Texture Spectrum model proposed
            in 1990.t has since been found to be a powerful feature for
            texture classification; it has further been determined that
            when LBP is combined with the Histogram of oriented gradients
            (HOG) descriptor, it improves the detection performance
            considerably on some datasets.

        Haar wavelets - 
            Is a discrete mathematical transform used in signal processing 
            and analysis, data compression and other applications.
        
        Discrete wavelet transform - 
            It is used to analyze digital signals, and also in the 
            compression of digital images. The simplest form of this trans-
            form, known as the Haar transform, was created in 1909.

        Factor Analysis - 
            Is a technique that is used to reduce a large number of vari-
            ables into fewer numbers of factors.  This technique extracts 
            maximum common variance from all variables and puts them into 
            a common score.  As an index of all variables, we can use this
            score for further analysis. 

        Non-negative matrix factorization - 
            Is a group of algorithms in multivariate analysis and linear
            algebra where a matrix V is factorized into (usually) two 
            matrices W and H, with the property that all three matrices 
            have no negative elements. This non-negativity makes the 
            resulting matrices easier to inspect. 
            
        Bartlett Test - 
            Util for to test if as variance of k groups are homogeneous.
     
        Principal Component Analysis - 
            Given a collection of points in two, three, or higher dimen-
            sional space, a "best fitting" line can be defined as one that
            minimizes the average squared distance from a point to the
            line. The next best-fitting line can be similarly chosen from
            directions perpendicular to the first. Repeating this process
            yields an orthogonal basis in which different individual 
            dimensions of the data are uncorrelated.

        Discrete Cosine Transform - 
            Is an extension of the Cosine Transform or Continuous Cosine 
            Transform for a discrete domain. It is widely used in digital
            image processing and data printing.            
       
  - Feature Selection 

        Neighborhood Component Analysis (NCA) -
            Is a non-parametric method for selecting features with the 
            goal of maximizing prediction accuracy of regression and 
            classification algorithms.

       Least Absolute Shrinkage and Selection Operator (LASSO) - 
            Is a regression analysis method that performs both variable se-
            lection and regularization in order to enhance the prediction
            accuracy and interpretability of the statistical model it 
            produces. 
            
       Analysis of variance(ANOVA) - 
            Is a collection of statistical models and their associated 
            estimation procedures (such as the "variation" among and 
            between groups) used to analyze the differences among group
            means in a sample.    
%}


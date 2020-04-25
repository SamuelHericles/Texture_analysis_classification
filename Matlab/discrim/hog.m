function [X] = hog(imagens)

    k = 0;
    X = [];
    for z = 1:1776
        [featureVector_temp,hogVisualization_temp] = extractHOGFeatures(imagens{z});
        k = k+1;
        featureVectors{k} = featureVector_temp;
        hogVisualizations{k} = hogVisualization_temp;
        fprintf('%d: min: %f max: %f mean:%f \n',z,min(featureVectors{k}),max(featureVectors{k}),mean(featureVectors{k}));
        temp = [min(featureVectors{k}); max(featureVectors{k}); mean(featureVectors{k})];
        X = [X,temp];       
    end
    
    X = double(X');
end
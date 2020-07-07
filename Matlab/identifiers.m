%% Make the identifiers vector:
%{
    [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16, # Class 1
     1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16, # Class 2
                                       ... ] # Last Class
%}
function K = identifiers(classes,images)
    
    K = [];
    for c = 1:classes
        K = [K,1:images];
    end
    K = K';

end
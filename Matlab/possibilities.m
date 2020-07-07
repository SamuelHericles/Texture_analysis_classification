%% Is the Brute Force Feature Selection

%{
    For example, you have 3 feature and you want test beetween them,
    so this function make this way:

    3 features is 2^3-1 = 7 tests->

    -----
    0 0 1                   3 2 1             1  
    0 1 0                   3 2 1             2  
    0 1 1 ->Multiply with<- 3 2 1 ->Results<- 1 2
    1 0 0                   3 2 1             3  
    1 0 1                   3 2 1             3 1 
    1 1 0                   3 2 1             3 2
    1 1 1                   3 2 1             3 2 1 

%}

function d = possibilities(X)
    
    d = dec2bin(2^X-1:-1:0)-'0';
    for z = 1:size(d,2)
        d(:,z) = d(:,z)*z;
    end
end
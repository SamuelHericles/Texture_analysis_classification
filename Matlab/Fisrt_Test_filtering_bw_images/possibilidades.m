function d = possibilidades(X)
    
    d = dec2bin(2^X-1:-1:0)-'0';
    for z = 1:size(d,2)
        d(:,z) = d(:,z)*z;
    end
end
function ass = filt_pca(imagens)
    k = 0;
    ass = [];
    for z = 1:1776
        I = double(imagens{z});  
        Itransformed = I*pca(I);
        
        Ipc1 = [];
        Ipc2 = [];
        Ipc3 = [];
        Ipc4 = [];
        Ipc5 = [];
        Ipc6 = [];
        
        k = k+1;
        Ipc1 = [Ipc1 Itransformed(:,1)];
        Ipc2 = [Ipc2 Itransformed(:,2)];
        Ipc3 = [Ipc3 Itransformed(:,3)];
        Ipc4 = [Ipc4 Itransformed(:,4)];
        Ipc5 = [Ipc5 Itransformed(:,5)];
        Ipc6 = [Ipc6 Itransformed(:,6)];
        
        assin1{k} = Ipc1';
        assin2{k} = Ipc2';
        assin3{k} = Ipc3';
        assin4{k} = Ipc4';
        assin5{k} = Ipc5';
        assin6{k} = Ipc6';
        
    end
            
    assin1 = assin1';
    assin2 = assin2';
    assin3 = assin3';
    assin4 = assin4';
    assin5 = assin5';
    assin6 = assin6';
    
    ass = [assin1 assin2 assin3 assin4 assin5 assin6]; 
end 
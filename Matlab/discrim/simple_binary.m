function hist_simples = simple_binary(images,r)
    k = 0; 
    for z = 1:size(images,1)
        k = k+1;
        disp(k);
        m_test = images{z};
        aux=[];
        i = [1 2 3 4];
        j = [1 2 3 4];
        auxj = j;
        values = [];
        for vis = 1:size(m_test,1)/r
            j=auxj;     
            for vjs = 1:size(m_test,1)/r
                %fprintf('\n');
                for subi = i
                    for subj = j
                       aux = strcat(aux,num2str(m_test(subi,subj)));
                    end
                end
                values = [values bin2dec(aux)];
                %fprintf("%d",bin2dec(aux));
                aux = [];
                j=j+4;
            end
            i=i+4;
        end   
        hist_simples{k} = values;
        %f = figure(1);
        %clf(f);
        %histogram(values);
        %title([num2str(z)]);
    end
end
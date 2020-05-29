[bottom,right] = size(m_test);
top = 1;
left = 1;
value = 1;
    count = 0;
    aux = int32([]);
    while true

        %Top Row First
        if left>right
            break;
        end
        for i = left:right
            count = count + 1;
            aux = strcat(aux,num2str(m_test(top,i)));
            value = value + 1;
        end
        top = top + 1;

        %Then The RightMost Column
        if top>bottom
            break;
        end
        for i = top:bottom
            count = count + 1;
             aux = strcat(aux,num2str(m_test(i,right)));
            value = value + 1;
        end
        right = right - 1;

        %Then Bottom Row
        if left>right
            break;
        end
        for i = right:-1:left
            count = count + 1;
             aux = strcat(aux,num2str(m_test(bottom,i)));
            value = value + 1;
        end
        bottom = bottom - 1;

        %Then The Left Column
        if top>bottom
            break;
        end
        for i = bottom:-1:top
            count = count + 1;
             aux = strcat(aux,num2str(m_test(i,left)));
            value = value + 1;
        end
        left = left + 1;

    end
    aux
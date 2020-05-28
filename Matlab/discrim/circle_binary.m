clc
% v1 = [0 1 0 1 0 1 0 1];
% v2 = [0 1 0 1 0 1 1 0];
% v3 = [1 0 1 0 1 0 0 1];
% v4 = [0 0 1 0 1 0 1 0];
% v5 = [1 0 1 0 1 0 1 0];
% v6 = [0 0 1 0 1 0 1 1];
% v7 = [1 0 1 0 1 0 1 0];
% v8 = [0 0 1 0 1 0 1 0];
% 
% m_test = [v1;v2;v3;v4;v5;v6;v7;v8];
% disp(m_test)
% 
% vi = size(m_test,1);
% vj = size(m_test,2);

% m_sub_test = [0 1 0 1; 0 1 0 1; 1 0 1 0; 0 0 1 0];
% 
% [bottom,right] = size(m_sub_test);
% top = 1;
% left = 1;
% value = 1;
% 
% count = 0;
% aux = int32([]);
% while true
% 
%     %Top Row First
%     if left>right
%         break;
%     end
%     for i = left:right
%         count = count + 1;
%         aux = strcat(aux,num2str(m_sub_test(top,i)));
%         value = value + 1;
%     end
%     top = top + 1;
%     
%     %Then The RightMost Column
%     if top>bottom
%         break;
%     end
%     for i = top:bottom
%         count = count + 1;
%          aux = strcat(aux,num2str(m_sub_test(i,right)));
%         value = value + 1;
%     end
%     right = right - 1;
%     
%     %Then Bottom Row
%     if left>right
%         break;
%     end
%     for i = right:-1:left
%         count = count + 1;
%          aux = strcat(aux,num2str(m_sub_test(bottom,i)));
%         value = value + 1;
%     end
%     bottom = bottom - 1;
%     
%     %Then The Left Column
%     if top>bottom
%         break;
%     end
%     for i = bottom:-1:top
%         count = count + 1;
%          aux = strcat(aux,num2str(m_sub_test(i,left)));
%         value = value + 1;
%     end
%     left = left + 1;
%     
% end
% bin2dec(aux)

i = [1 2 3 4];
j = [1 2 3 4];
for vis = 1:2
    for vjs = 1:2
        disp(i);
        disp(j);
    end
    i = i+4;
end



% LV=matrix_to_list(matrix) convert adjacency matrix to list of vertexes 
%  Svetlana Gagarinova  (c) 2005,2006

function LV=matrix_to_list(matrix)
sz=size(matrix);
LV=sl_new;
for i=1:sz(1)
    v.data=i;
    v.list=sl_new;
    e.data.beg=i;
    for j=(i+1):sz(1)
        if(matrix(i,j)~=0)
         e.data.fin=j;
         e.prior=matrix(i,j);
         v.list=sl_insrt(v.list,e);
        end; 
    end;
    LV=sl_insrt(LV,v);
end;   


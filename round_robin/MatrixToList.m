function LV=MatrixToList(matrix)
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


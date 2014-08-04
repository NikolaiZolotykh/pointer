function djs_grap2(djs,x,y,dx,dy)

newx=x;
size=length(djs);
for i=1:size;
     if djs(i)==i
        set=set_new;
        set=set_insert(set,i);
        djs(i)=0;
        for k=1:size
            if djs(k)==i
               set=set_insert(set,k);    
            end
        end
        newx=newx+dx;
        newy=y;
        djs_grap3(set.tree,newx,y,1,1);
        set=set_free(set);
     end
end
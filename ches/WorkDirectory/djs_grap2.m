function djs_grap2(djs,x,y,dx,dy)

%  Helper function for djs_graph.

newx=x;
sz=length(djs);
for i=1:sz
    if djs(i)==i 
       set=set_new;
       name=i;
       [djs,set]=djs_graph4(djs,name,set);
       newx=newx+dx;
       newy=y;
       djs_grap3(set.tree,newx,y,0.5,1);
       set=set_free(set);
    end
end
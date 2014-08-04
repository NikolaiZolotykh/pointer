function djs_grap2(djs,x,y,dx,dy)

newx=x;
sz=length(djs);
temp1(sz)=0;
while ~isequal(djs,temp1);
     set=set_new;
     for i=1:sz
         if djs(i)==i
             name=i;
             djs(i)=0;
             set=set_insert(set,name);
             break;
         end
     end
     for i=1:sz
         if djs(i)==name
             djs(i)=0;
             set=set_insert(set,i);
         end
     end
    newx=newx+dx;
    newy=y;
    djs_grap3(set.tree,newx,y,0.5,1);
    set=set_free(set);
end
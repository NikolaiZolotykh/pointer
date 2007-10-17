function djsarr_graph(djs)

sz=djsarr_getsize(djs);
size=length(djs);
a=zeros(1,sz);
l=1;
for i=1:size
    if (djs(i)~=0)
        temp.ar(l)=i;
        temp.par(l)=djs(i);
        l=l+1;
    end
end

for i=1:sz
     for k=1:sz
           if temp.ar(k)==temp.par(i)
               a(1,i)=k;
               break
           end
     end
end
for i=1:sz
    if temp.ar(i)==temp.par(i)
        a(1,i)=0;
    end
end

hold on;
axis off;
treeplot(a);
[x,y]=treelayout(a);
for i=1:sz
  xy(i,1)=x(i);
  xy(i,2)=y(i);
end;  
treelabel_for_djsarr(xy,djs);
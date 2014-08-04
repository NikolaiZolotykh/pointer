function count=djs_getcount(djs)

size=length(djs.data);
count=0;
for i=1:size
    if djs.data(i)==i
        count=count+1;
    end
end
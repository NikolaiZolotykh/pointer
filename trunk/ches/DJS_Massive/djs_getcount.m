function count=djs_getcount(djs)

size=length(djs);
count=0;
for i=1:size
    if djs(i)==i
        count=count+1;
    end
end
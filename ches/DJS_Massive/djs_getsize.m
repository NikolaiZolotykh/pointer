function size=djs_getsize(djs)

size=0;
n=length(djs);
for i=1:n
    if djs(i)~=0
        size=size+1;
    end
end
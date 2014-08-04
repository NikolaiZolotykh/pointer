function djs=djs_free(djs)

%  djs=djs_free(djs)deletes set and frees the memory.

size=length(djs);
for i=1:size
    djs(1)=[];
end
djs=0;
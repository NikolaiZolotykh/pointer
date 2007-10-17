function djs=djsarr_free(djs)

%  djs=djsarr_free(djs)deletes set and frees the memory.

% Copyright 2005-2006 Svetlana Chernishova

size=length(djs);
for i=1:size
    djs(1)=[];
end
djs=0;
function djs=djs_free(djs)

%  djs=djs_free(djs)deletes set and frees the memory.

% Copyright 2005-2006 Svetlana Chernishova

sz=length(djs.data);
for i=1:sz
    djs.data(1)=[];
    djs.r(1)=[];
end
djs=0;
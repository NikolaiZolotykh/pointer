function size=djsarr_getsize(djs)

%  size=djsarr_getsize(djs) returns size of set djs.

% Copyright 2005-2006 Svetlana Chernishova

size=0;
n=length(djs);
for i=1:n
    if djs(i)~=0
        size=size+1;
    end
end
function count=djs_getcount(djs)

%  count=djs_getcount(djs) returns number of subsets.

% Copyright 2005-2006 Svetlana Chernishova

size=length(djs);
count=0;
for i=1:size
    if djs(i)==i
        count=count+1;
    end
end
function djs=djsarr_delete_subset(djs,name)

%  djs=djsarr_delete_subset(djs,name) deletes subset
%  with name "name" and returns changed set djs.

% Copyright 2005-2006 Svetlana Chernishova

size=length(djs);
for i=1:size
    if djs(i)==name
        djs(i)=0;
    end
end
i=size;
while djs(i)==0
    djs(i)=[];
    i=i-1;
end
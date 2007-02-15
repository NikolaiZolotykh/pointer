function djs=djsarr_delete_element(djs,element)

%  djs=djsarr_delete_element(djs,element) deletes element
%  and returns changed set djs.

% Copyright 2005-2006 Svetlana Chernishova

if djs(element)==element
    error('You should perform djs_delete_subset');
end

djs(element)=0;
size=length(djs);
i=size;
while djs(i)==0
    djs(i)=[];
    i=i-1;
end
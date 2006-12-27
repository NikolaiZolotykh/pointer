function djs=djs_compression(djs,element)

%  djs=djs_compression(djs,element) perfoms compression of way
%  from root to element and return changed massive.

% Copyright 2005-2006 Svetlana Chernishova

temp=element;
while djs.data(element)~=element
    element=djs.data(element);
end
name=element;
while djs.data(temp)~=temp
    temp1=temp;
    temp=djs.data(temp);
    djs.data(temp1)=name;
end
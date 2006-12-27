function name=djs_find(djs,element)

%  name=djs_find(djs,element) returns name of subset, in which
%  element was found; if element wasn't found
%  function returns error 'There is no such element'.

% Copyright 2005-2006 Svetlana Chernishova

name=djs(element);
if (name==0)
    error ('There is no such element');
end
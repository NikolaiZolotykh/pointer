function x = removenext(a, p)

% x = removenext(a, p) removes the element following the element
%     with the pointer p, frees the memory occupied by the node and 
%     returns the element.

x = remove(a, next(a, p));

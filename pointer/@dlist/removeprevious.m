function x = removeprevious(a, p)

% x = removeprevious(a, p) removes the element preceding the element
%     with the pointer p, frees the memory occupied by the node and 
%     returns the element.

x = remove(a, previous(a, p));

function x = removepos(a, i)

% x = removeback(a) removes the i-th element in the list,
%     frees the memory occupied by the node and returns the element.

x = remove(a, locatepos(a, i));

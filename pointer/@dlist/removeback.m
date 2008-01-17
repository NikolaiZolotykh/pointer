function x = removeback(a)

% x = removeback(a) removes the last element in the list,
%     frees the memory occupied by the node and returns the element.

x = remove(a, back(a));

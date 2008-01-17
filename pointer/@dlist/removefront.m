function x = removefront(a)

% x = removefront(a, p) removes the first element in the list,
%     frees the memory occupied by the node and returns the element.

x = remove(a, front(a));

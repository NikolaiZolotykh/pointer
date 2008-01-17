function x = remove(a, p)

% x = remove(a, p) removes the element with the pointer p from the list,
%     frees the memory occupyed by the node and returns the element.

p.prev.next = p.next;
p.next.prev = p.prev;
x = p.data;
free(p);
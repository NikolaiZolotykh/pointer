function x = removefront(a)

% x = removefront(a) removes the first element in the list,
%     frees the memory occupied by the node and 
%     returns the element.

p = a.head.next;
x = p.data;
a.head.next = p.next;
free(p);

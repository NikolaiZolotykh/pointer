function x = removenext(a, p)

% x = removenext(a, p) removes the element following the element
%     with the pointer p, frees the memory occupied by the node and 
%     returns the element.

p1 = p.next;
x = p1.data;
p.next = p1.next;
free(p1);

function p1 = insertbefore(a, x, p)

% p1 = insertbefore(a, x, p) inserts element x into the list a 
%     before the element with the pointer p and returns a pointer to x.

p1 = pointer;
p1.data = x;
p1.next = p;
p1.prev = p.prev;
p.prev.next = p1;
p.prev = p1;



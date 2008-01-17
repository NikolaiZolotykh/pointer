function p1 = insertafter(a, x, p)

% p1 = insertafter(a, x, p) inserts element x into the list
%     after the element with pointer p and returns a pointer to x.

p1 = pointer;
p1.data = x;
p1.next = p.next;
p1.prev = p;
p.next.prev = p;
p.next = p1;



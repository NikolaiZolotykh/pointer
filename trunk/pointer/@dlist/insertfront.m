function p = insertfront(a, x)

% p = insertfront(a, x) inserts element x at the beginning of a
%     and returns a pointer to x.

p = pointer;
p.data = x;
p.next = a.head.next;
p.prev = a.head;
a.head.next.prev = p;
a.head.next = p;



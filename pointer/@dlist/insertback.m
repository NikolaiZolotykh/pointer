function p = insertback(a, x)

% p = insertback(a, x) inserts element x at the end of a
%     and returns a pointer to x.

p = pointer;
p.data = x;
p.prev = a.tail.prev;
p.next = a.tail;
a.tail.prev.next = p;
a.tail.prev = p;


    
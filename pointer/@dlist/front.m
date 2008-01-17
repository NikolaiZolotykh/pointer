function p = front(a)

% p = front(a) returns the pointer to the first element in a.
%     If a is empty then p is 0.

p = a.head.next;

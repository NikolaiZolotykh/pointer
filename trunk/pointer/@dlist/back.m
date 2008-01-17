function p = back(a)

% p = front(a) returns the pointer to the last element in a.
%     If a is empty then p is 0.

p = a.tail.prev;
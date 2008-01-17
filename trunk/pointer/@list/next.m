function p = next(a, p)

% p1 = next(a, p) returns a pointer to the element following the element
%     with pointer p. If p is a pointer to the last element in the list a
%     then 0 is returned

p = p.next;
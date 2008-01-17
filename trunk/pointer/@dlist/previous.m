function p = previous(a, p)

% p1 = previous(a, p) returns a pointer to the element preceding the element
%     with pointer p. If p is a pointer to the first element in the list
%     then 0 is returned

p = p.prev;
if p == a.head
    p = 0;
end
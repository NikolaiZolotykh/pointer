function p = locatepos(a, i)

% p = locatepos(a, i) returns the pointer to the i-th element
%     of the list a

j = 1;
p = a.head.next;
while p ~= a.tail && j < i
    p = p.next;
    j = j + 1;
end



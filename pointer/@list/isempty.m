function b = isempty(a)

% b = isempty(a) returns true iff the list a is empty

b = (a.head.next == 0);
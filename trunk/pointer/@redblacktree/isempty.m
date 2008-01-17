function b = isempty(a)

% b = isempty(a) returns true iff a is empty

b = (getroot(a.bintree) == nil);
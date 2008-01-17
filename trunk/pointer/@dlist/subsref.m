function x = subsref(a, s)

% a(n) returns the n-th element of a

if isequal(s.type, '()')
    x = retrieve(a, locatepos(a, s.subs{1}));
end
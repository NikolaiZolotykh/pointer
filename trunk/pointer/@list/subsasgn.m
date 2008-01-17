function a = subsasgn(a, s, x)

% a(n) = x modifies the n-th element of a

if isequal(s.type, '()')
    modify(a, locatepos(a, s.subs{1}), x);
end
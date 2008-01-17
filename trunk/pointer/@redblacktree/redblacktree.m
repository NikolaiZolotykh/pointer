function a = redblacktree

% a = redblacktree creates an empty black-red search tree

b = bintree;
a.data = pointer;
a.data = getroot(b);
setroot(b, nil);
a = class(a, 'redblacktree', b);

function [x, k] = remove(a, p)

% [x, k] = remove(a, p) removes the element with pointer p,
%     releases the memory occupied by the node and returns the element
%     and the key

x = p.data;
k = p.key;

newroot = do_remove(getroot(a.bintree), p);
setroot(a.bintree, newroot);

function rb = do_remove(rb, z)

if z == 0 || z == nil
    return
end

if z.left == nil || z.right == nil
    y = z;
else
    y = z.right;
    while y.left ~= nil
        y=y.left;
    end
end

if y.left ~= nil
    x = y.left;
else
    x = y.right;
end

x.parent = y.parent;
if y.parent == 0
    rb = x;
else
    if y == y.parent.left
        y.parent.left = x;
    else
        y.parent.right = x;
    end
end

if y ~= z
    z.key = y.key;
    z.data = y.data;
end
if isequal(y.color, 'black')
    [rb, x] = rb_del_fixup(rb, x);
end
free(y);

function [rb, x] = rb_del_fixup(rb, x)

while x ~= rb && isequal(x.color, 'black')
    if x == x.parent.left
        w = x.parent.right;
        if isequal(w.color, 'red')
            w.color = 'black';
            x.parent.color = 'red';
            rb = leftrotation(rb, x.parent);
            w = x.parent.right;
        end
        if isequal(w.left.color, 'black') && isequal(w.right.color, 'black')
            w.color = 'red';
            x = x.parent;
        else
            if isequal(w.right.color, 'black')
                w.left.color = 'black';
                w.color = 'red';
                rb = rightrotation(rb,w);
                w = x.parent.right;
            end
            w.color = x.parent.color;
            x.parent.color = 'black';
            w.right.color = 'black';
            rb = leftrotation(rb, x.parent);
            x = rb;
        end
    else
        w = x.parent.left;
        if isequal(w.color, 'red')
            w.color = 'black';
            x.parent.color = 'red';
            rb = rightrotation(rb, x.parent);
            w = x.parent.left;
        end
        if isequal(w.right.color, 'black') && isequal(w.left.color, 'black')
            w.color = 'red';
            x = x.parent;
        else
            if isequal(w.left.color, 'black')
                w.right.color = 'black';
                w.color = 'red';
                rb = leftrotation(rb, w);
                w = x.parent.left;
            end
            w.color = x.parent.color;
            x.parent.color = 'black';
            w.left.color = 'black';
            rb = rightrotation(rb, x.parent);
            x = rb;
        end
    end
end
x.color = 'black';



function rb = rightrotation(rb, x)

y = x.left;

x.left = y.right;
if y.right ~= nil
    y.right.parent = x;
end

if y ~= nil
    y.parent = x.parent;
end
if x.parent ~= 0
    if x == x.parent.right
        x.parent.right = y;
    else
        x.parent.left = y;
    end
else
    rb = y;
end

y.right = x;
if x ~= nil
    x.parent = y;
end


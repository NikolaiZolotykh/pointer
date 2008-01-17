function rb = leftrotation(rb, x)

y = x.right;

x.right = y.left;
if y.left ~= nil
    y.left.parent = x;
end

if y ~= nil
    y.parent = x.parent;
end
if x.parent ~= 0
    if x == x.parent.left
        x.parent.left = y;
    else
        x.parent.right = y;
    end
else
    rb = y;
end

y.left = x;
if x ~= nil
    x.parent = y;
end


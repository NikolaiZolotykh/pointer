function remove(a, p)

% [x, k] = remove(a, p) removes the element with pointer p,
%     release the memory occupyed by the node and returns the element
%     and the key

x = p.data;
k = p.key;

a.data.root = do_remove(a.data.root, p);

function bt = do_remove(bt, x)

if bt == 0
    return;
end

xkey = x.key;
btkey = bt.key;
if xkey < btkey
    bt.left = do_remove(bt.left,x);
elseif xkey > btkey
    bt.right = do_remove(bt.right,x);
else
    q = bt;
    if q.right == 0
        bt = q.left;
    elseif q.left == 0
        bt = q.right;
    else
        node = q.right;
        while node.left ~= 0
            node = node.left;
        end
        node.left = q.left;
        bt = q.right;
    end
    free(q);
end


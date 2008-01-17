function p = findkey(a, k)

% p = findkey(a, k) finds the element with key k and returns its pointer

p = do_find(a.data.root, k);

function node = do_find(bt, key)

node = bt;
while node ~= 0
    nodekey = node.key;
    if key == nodekey
        return
    end
    if key < nodekey
        node = node.left;
    else
        node = node.right;
    end
end


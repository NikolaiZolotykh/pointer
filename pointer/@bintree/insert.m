function insert(a, x, k)

% bt = insert(a, x, k) inserts data in the binary tree a.
%     The binary tree is sorted according to a key.

a.data.root = do_insert(a.data.root, x, k)

function bt = do_insert(bt, data, key)

node = bt;
parent = 0;

while node ~= 0
    nodekey = node.key;
    if key == nodekey
        return
    end
    parent = node;
    if key < nodekey
        node = node.left;
    else
        node = node.right;
    end
end

node = pointer;
node.key = key;
node.data = data;
node.left = 0;
node.right = 0;

if parent == 0
    bt = node;
else
    if key < parent.key
        parent.left = node;
    else
        parent.right = node;
    end
end



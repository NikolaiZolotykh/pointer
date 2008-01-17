function free(a)

% free(a) releases memory occupied by the binary tree

a.data.root = do_free(a.data.root);
free(a.data);

function bt = do_free(bt)
% BT_FREE
%
%  bt=BT_FREE(bt) frees the memory allocated to the binary tree bt.

if bt ~= 0
    do_free(bt.left);
    do_free(bt.right);
end

bt = 0;
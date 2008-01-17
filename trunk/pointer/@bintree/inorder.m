function inorder(a, func, varargin)

% inorder(a, func, ...) travels the tree inorder
%     calling func on every node data.

do_inorder(a.data.root, func, varargin{:})

function do_inorder(bt, func, varargin)

if bt == 0
    return;
end

do_inorder(bt.left, func, varargin{:});
feval(func, bt.data, varargin{:});
do_inorder(bt.right, func, varargin{:});


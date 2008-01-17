function preorder(a, func, varargin)

% preorder(a, func, ...) travels the tree preorder
%     calling func on every node data.

do_preorder(a.data.root, func, varargin{:})

function do_preorder(bt, func, varargin)

if bt == 0
    return;
end

feval(func ,bt.data, varargin{:});
do_preorder(bt.left, func, varargin{:});
do_preorder(bt.right, func, varargin{:});


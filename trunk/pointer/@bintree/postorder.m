function postorder(a, func, varargin)

% postorder(a, func, ...) travels the tree postorder
%     calling func on every node data.

do_postorder(a.data.root, func, varargin{:})

function do_postorder(bt, func, varargin)

if bt == 0
    return;
end

do_postorder(bt.left, func, varargin{:});
do_postorder(bt.right, func, varargin{:});
feval(func, bt.data, varargin{:});


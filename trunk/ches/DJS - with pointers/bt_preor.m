function bt_preor(bt,func,varargin)
% BT_PREOR
%
%  BT_PREOR(bt,func,...) traverses the tree preorder,
%  calling func on every node data.

% Copyright (c) MathWorks Inc. 1998-2001. All rights reserved.
bt_preor1(bt.tree,func,varargin{:})
function bt_preor1(tree,func,varargin)
global bt_nil

if tree==bt_nil
   return ;
end

feval(func,tree.data,varargin{:});
bt_preor1(tree.left,func,varargin{:});
bt_preor1(tree.right,func,varargin{:});


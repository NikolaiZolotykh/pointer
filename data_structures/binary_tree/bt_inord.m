function bt_inord(bt,func,varargin)
% BT_INORD
%
%  BT_INORD(bt,func,...) traverses the tree inorder.
%  calling func on every node data.

% Copyright (c) MathWorks Inc. 1998-2001. All rights reserved.
bt_inord1(bt.tree,func,varargin{:})

function bt_inord1(tree,func,varargin)
global bt_nil
if tree==bt_nil
  return;
end

bt_inord1(tree.left,func,varargin{:});
feval(func,tree.data,varargin{:});
bt_inord1(tree.right,func,varargin{:});


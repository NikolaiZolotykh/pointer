function bt_posto(bt,func,varargin)
% BT_POSTO
%
%  BT_POSTO(bt,func,...) traverses the tree postorder,
%  calling func on every node data.

% Copyright (c) MathWorks Inc. 1998-2001. All rights reserved.
bt_posto1(bt.tree,func,varargin{:})
function bt_posto1(tree,func,varargin)
global bt_nil

if tree==bt_nil
  return;
end

bt_posto1(tree.left,func,varargin{:});
bt_posto1(tree.right,func,varargin{:});
feval(func,tree.data,varargin{:});


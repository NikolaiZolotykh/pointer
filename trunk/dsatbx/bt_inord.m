function bt_inord(bt,func,varargin)
% BT_INORD
%
%  BT_INORD(bt,func,...) traverses the tree inorder.
%  calling func on every node data.

% Copyright (c) MathWorks Inc. 1998-2001. All rights reserved.

global bt_nil

if bt==bt_nil
  return;
end

bt_inord(bt.left,func,varargin{:});
feval(func,bt.data,varargin{:});
bt_inord(bt.right,func,varargin{:});


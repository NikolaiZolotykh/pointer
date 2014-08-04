function bt_posto(bt,func,varargin)
% BT_POSTO
%
%  BT_POSTO(bt,func,...) traverses the tree postorder,
%  calling func on every node data.

% Copyright (c) MathWorks Inc. 1998-2001. All rights reserved.

global bt_nil

if bt==bt_nil
  return;
end

bt_posto(bt.left,func,varargin{:});
bt_posto(bt.right,func,varargin{:});
feval(func,bt.data,varargin{:});


function bt_preor(bt,func,varargin)
% BT_PREOR
%
%  BT_PREOR(bt,func,...) traverses the tree preorder,
%  calling func on every node data.

% Copyright (c) MathWorks Inc. 1998-2001. All rights reserved.

global bt_nil

if bt==bt_nil
  return;
end

feval(func,bt.data,varargin{:});
bt_preor(bt.left,func,varargin{:});
bt_preor(bt.right,func,varargin{:});


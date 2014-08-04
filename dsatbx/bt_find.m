function node=bt_find(bt,key)
% BT_FIND
%
%  node=BT_FIND(bt,key) finds the node with key.
%  if key was not found, node=bt_nil.

% Copyright (c) MathWorks Inc. 1998-2001. All rights reserved.

global bt_nil

node=bt;
bt_nil.key=key;

while node~=bt_nil
  nodekey=node.key;
  if key==nodekey
    return
  end
  if key<nodekey
    node=node.left;
  else
    node=node.right;
  end
end


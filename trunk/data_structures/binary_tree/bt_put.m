function bt=bt_put(bt,data,key)
% BT_PUT
%
%  bt=BT_PUT(bt,data,key) inserts data in the binary tree bt.
%  The binary tree is sorted according to a key.

% Copyright (c) MathWorks Inc. 1998-2001. All rights reserved.

global bt_nil

node=bt.tree;
parent=bt_nil;

while node~=bt_nil
  nodekey=node.key;
  if key==nodekey
    return
  end
  parent=node;
  if key<nodekey
    node=node.left;
  else
    node=node.right;
  end
end

node=pointer;
node.key=key;
node.data=data;
node.left=bt_nil;
node.right=bt_nil;

if parent==bt_nil
  bt.tree=node;
  bt.size=bt.size+1;
else
  if key<parent.key
    parent.left=node;
    bt.size=bt.size+1;
  else
    parent.right=node;
    bt.size=bt.size+1;
  end
end



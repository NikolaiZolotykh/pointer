function bt=bt_free(bt)
global bt_nil; 
if nargout<1
 warning('Tree unequal NULL.Put output argument');
end 
bt.tree=bt_free1(bt.tree);
bt.tree=copy(bt_nil); 
free(bt.tree);
bt.current=copy(bt_nil); 
free(bt.current);
bt.stack=st_free(bt.stack);
bt.currpos=-1;
bt.size=-1;

function bt=bt_free1(bt)
% BT_FREE
%
%  bt=BT_FREE(bt) frees the memory allocated to the binary tree bt.

% Copyright (c) MathWorks Inc. 1998-2001. All rights reserved.

global bt_nil

if bt.left~=bt_nil
  bt.left=bt_free1(bt.left);
end

if bt.right~=bt_nil
  bt.right=bt_free1(bt.right);
end

%if bt~=bt_nil
  %free(bt);
% illegal tree
%end

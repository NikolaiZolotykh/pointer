function bt=bt_del(bt,x)
% BT_DEL
%
%  bt=BT_DEL(bt,x) deletes x from the binary tree bt.

% Copyright (c) MathWorks Inc. 1998-2001. All rights reserved.

global bt_nil

if bt==bt_nil
   return;
end

xkey=x.key;
btkey=bt.key;
if xkey<btkey
   bt.left=bt_del(bt.left,x);
elseif xkey>btkey
  	bt.right=bt_del(bt.right,x);
else
  	q=bt;
	if q.right==bt_nil
      bt=q.left;
	elseif q.left==bt_nil
      bt=q.right;
   else      
      node = q.right;      
      while node.left~=bt_nil         
         node = node.left;         
      end      
      node.left = q.left;      
      bt = q.right;      
   end   
   free(q);   
end


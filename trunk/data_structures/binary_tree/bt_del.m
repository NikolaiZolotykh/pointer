function bt=bt_del(bt,x)
% BT_DEL
%
%  bt=BT_DEL(bt,x) deletes x from the binary tree bt.

% Copyright (c) MathWorks Inc. 1998-2001. All rights reserved.
global yn;
yn=0;
if x==bt.current.key
 if bt_isend(bt)
  bt=bt_reset(bt);
 else 
  bt=bt_next(bt);
 end
end 
bt.tree=bt_delrec(bt.tree,x);
if yn
 bt.size=bt.size-1;
end 


function bt=bt_delrec(bt,x)
global bt_nil
global yn;
if bt==bt_nil
   return;
end


btkey=bt.key;
if x<btkey
   bt.left=bt_delrec(bt.left,x);
elseif x>btkey
  	bt.right=bt_delrec(bt.right,x);
else
  	q=bt;
	if q.right==bt_nil
      bt=q.left;
	elseif q.left==bt_nil
      bt=q.right;
   else      
      node = q.right;
      parent=q;
      while node.left~=bt_nil         
          parent=node;            
          node = node.left;
      end      
      %node.left = q.left;      
      %bt = q.right;
      q.data=node.data;
      q.key=node.key;
      parent.left=node.right;
      parent.right=bt_nil;
      bt=q; 
   q=node;
    end                                    
   free(q);
   yn=1;
end

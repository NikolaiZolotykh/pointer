function bt=bt_next(bt)
global bt_nil;
if nargin<1
  error('one input argument required.');
end
 if bt.current.data.right==bt_nil
  if st_empty(bt.stack)
   bt.current.data=bt_nil;   
  else 
   bt.current.data=st_top(bt.stack);
   bt.stack=st_pop(bt.stack); 
   bt.currpos=bt.currpos+1;
  end 
 else
  bt.current.data=bt.current.data.right;
  while bt.current.data.left~=bt_nil 
   bt.stack=st_push(bt.stack,bt.current.data); 
   bt.current.data=bt.current.data.left;
  end
  bt.currpos=bt.currpos+1;
 end
 

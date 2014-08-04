function bt=bt_next(bt)
global bt_nil;
if nargin<1
  error('one input argument required.');
end
 if bt.current.right==bt_nil
  if st_empty(bt.stack)
   bt.current=bt_nil;   
  else 
   bt.current=st_top(bt.stack);
   bt.stack=st_pop(bt.stack); 
   bt.currpos=bt.currpos+1;
  end 
 else
  bt.current=bt.current.right;
  while bt.current.left~=bt_nil 
   bt.stack=st_push(bt.stack,bt.current); 
   bt.current=bt.current.left;
  end
  bt.currpos=bt.currpos+1;
 end
 

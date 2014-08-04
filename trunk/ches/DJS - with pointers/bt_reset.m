function bt=bt_reset(bt)
global bt_nil;
if nargin<1
  error('one input argument required.');
end
bt.currpos=1;
bt.stack=st_free(bt.stack);
bt.stack=st_new;
bt.current=bt.tree;
while bt.current.left~=bt_nil 
   bt.stack=st_push(bt.stack,bt.current); 
   bt.current=bt.current.left;
end     
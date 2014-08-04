function bt=bt_reset(bt)
global bt_nil;
if nargin<1
  error('one input argument required.');
end
bt.currpos=1;
bt.stack=st_free(bt.stack);
bt.stack=st_new;
bt.current.data=bt.tree;
while bt.current.data.left~=bt_nil 
   bt.stack=st_push(bt.stack,bt.current.data); 
   bt.current.data=bt.current.data.left;
end     
function bt=bt_resetforheap(bt)
global bt_nil;
a=copy(bt_nil);
if nargin<1
  error('one input argument required.');
end
bt.currpos=1;
bt.stack=st_free(bt.stack);
bt.stack=st_new;
bt.current.data=bt.tree;
while bt.current.data.left.rank~=0 
   bt.stack=st_push(bt.stack,bt.current.data); 
   bt.current.data=bt.current.data.left;
end     
bt_nil=a;
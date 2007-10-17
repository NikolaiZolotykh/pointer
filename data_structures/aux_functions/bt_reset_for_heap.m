function bt=bt_reset_for_heap(bt)
global lt_nil;
if nargin<1
  error('one input argument required.');
end
bt.currpos=1;
bt.stack=st_free(bt.stack);
bt.stack=st_new;
bt.current=bt.tree;
% while bt.current.left.rank~=0 
while isempty(bt.current.left.data)~=1
   bt.stack=st_push(bt.stack,bt.current); 
   bt.current=bt.current.left;
end     

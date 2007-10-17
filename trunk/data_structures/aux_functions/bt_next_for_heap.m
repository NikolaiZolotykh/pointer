function bt=bt_next_for_heap(bt)
global lt_nil;
if nargin<1
  error('one input argument required.');
end
%  if bt.current.right.rank==0
if isempty(bt.current.right.data)==1
  if st_empty(bt.stack)
   bt.current=lt_nil;   
  else 
   bt.current=st_top(bt.stack);
   bt.stack=st_pop(bt.stack); 
   bt.currpos=bt.currpos+1;
  end 
 else
  bt.current=bt.current.right;
%   while bt.current.left.rank~=0 
while isempty(bt.current.left.data)~=1
   bt.stack=st_push(bt.stack,bt.current); 
   bt.current=bt.current.left;
  end
  bt.currpos=bt.currpos+1;
 end
 
 
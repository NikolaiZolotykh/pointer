
%heap=selforgheap_new create empty self-organizing heap
%  Svetlana Gagarinova  (c) 2005,2006

function heap=selforgheap_new
if nargout<1
  error('one output argument required.');
end  
global lt_nil;
if isempty(lt_nil)
  lt_nil=pointer;
  lt_nil.data=[];
  lt_nil.rank=0;
  lt_nil.parent=lt_nil;
  lt_nil.left=lt_nil;
  lt_nil.right=lt_nil;
  lt_nil.prior=[];
 end
heap.size=0;
heap.current=pointer;
heap.current=copy(lt_nil);
heap.tree=pointer;
heap.tree=lt_nil;

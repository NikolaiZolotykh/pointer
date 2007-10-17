
%lheap=lheap_new create empty left-hand heap
%  Svetlana Gagarinova  (c) 2005,2006

function lheap=lheap_new
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
lheap.size=0;
lheap.current=pointer;
lheap.current=copy(lt_nil);
lheap.tree=pointer;
lheap.tree=lt_nil;

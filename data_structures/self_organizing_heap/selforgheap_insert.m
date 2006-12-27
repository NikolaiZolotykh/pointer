
%heap=selforgheap_insert(heap,data,prior) insert element into a heap and
%returns changed heap
%  Svetlana Gagarinova  (c) 2005,2006

function heap=selforgheap_insert(heap,data,prior)
 if nargout<1
  error('one output argument required.');
 end  
 global lt_nil;
 lh1.size=1;
 lh1.tree=pointer;
 lh1.tree.data=data;
 lh1.tree.prior=prior;
 lh1.tree.left=lt_nil;
 lh1.tree.right=lt_nil;
 lh1.current=lh1.tree;
 [heap,lh1]=selforgheap_merge(heap,lh1); 
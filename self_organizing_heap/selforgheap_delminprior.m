
%heap=selforgheap_delminprior(heap) deletes minimal element,returns changed
%heap

function heap=selforgheap_delminprior(heap)
 if nargout<1
  error('one output argument required.');
 end
 global lt_nil;
 if heap.tree.left~=lt_nil
  lhl.size=1;
 else   lhl.size=0;
 end; 
 if heap.tree.right~=lt_nil
  lhr.size=heap.size-2;
 else lhr.size=0;
 end;    
 lhl.tree=heap.tree.left;
 lhr.tree=heap.tree.right;
 lhl=selforgheap_merge(lhl,lhr);
 free(heap.tree);
 heap.tree=lhl.tree;
 heap.size=heap.size-1;
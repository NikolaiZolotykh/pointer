
%node=selforgheap_findminprior(heap) returns element with minimal priority
%as a struct

function node=selforgheap_findminprior(heap)
 if heap.size~=0
  node.data=heap.tree.data;
  node.prior=heap.tree.prior;
 else
  node=0;
 end; 
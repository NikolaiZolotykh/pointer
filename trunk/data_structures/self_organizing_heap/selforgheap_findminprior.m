
%node=selforgheap_findminprior(heap) returns element with minimal priority
%as a struct
%  Svetlana Gagarinova  (c) 2005,2006

function node=selforgheap_findminprior(heap)
 if heap.size~=0
  node.data=heap.tree.data;
  node.prior=heap.tree.prior;
 else
  node=0;
 end; 
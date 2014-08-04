
%node=lheap_findminprior(lheap) returns element with minimal priority as a
%struct

function node=lheap_findminprior(lheap)
 if nargout<1
  error('one output argument required.');
 end  
 if lheap.size~=0
  node.data=lheap.tree.data;
  node.prior=lheap.tree.prior;
 else
  node=0;
 end; 
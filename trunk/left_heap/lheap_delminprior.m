
%lheap=lheap_delminprior(lheap) deletes minimal element,returns changed
%heap

function lheap=lheap_delminprior(lheap)
 if nargout<1
  error('one output argument required.');
 end
 global lt_nil;
 if lheap.tree.left.rank~=0
  lhl.size=1;
 else   lhl.size=0;
 end; 
 if lheap.tree.right.rank~=0
  lhr.size=lheap.size-2;
 else lhr.size=0;
 end;    
 lhl.tree=lheap.tree.left;
 lhl.tree.parent=pointer;
 lhl.tree.parent.data=lt_nil;
 lhr.tree=lheap.tree.right;
 lhr.tree.parent=pointer;
 lhr.tree.parent.data=lt_nil;
 lhl=lheap_merge(lhl,lhr);
 free(lheap.tree);
 lheap.tree=lhl.tree;
 lheap.current.data=lheap.tree;
 lheap.size=lheap.size-1; 
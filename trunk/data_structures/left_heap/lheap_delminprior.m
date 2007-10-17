
%lheap=lheap_delminprior(lheap) deletes minimal element,returns changed
%heap
%  Svetlana Gagarinova  (c) 2005,2006

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
 lhl.tree.parent=lt_nil;
 lhr.tree=lheap.tree.right;
 lhr.tree.parent=pointer;
 lhr.tree.parent=lt_nil;
 lhl=lheap_merge(lhl,lhr);
 if(lheap.tree.rank~=0)
  free(lheap.tree);
 end; 
 lheap.tree=copy(lhl.tree);
 if(lhl.tree.left.rank~=0)
   lhl.tree.left.parent=lheap.tree;
 elseif(lhl.tree.right.rank~=0)
   lhl.tree.right.parent=lheap.tree;  
 end;
 if(lhl.tree.rank~=0)
  free(lhl.tree)
 end; 
 lheap.current=lheap.tree;
 lheap.size=lheap.size-1; 
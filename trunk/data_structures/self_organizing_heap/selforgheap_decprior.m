
%heap=selforgheap_decprior(heap,prior) decreases priority of current element 
%of self-organizing heap, returns changed heap  
%  Svetlana Gagarinova  (c) 2005,2006

function heap=selforgheap_decprior(heap,prior)
 if nargout<1
  error('one output argument required.');
 end  
 if prior>heap.current.prior;
   error('You can not increase priority');
  end 
 global lt_nil;
 lc=heap.current;
 if(lc==heap.tree)
  lc.prior=prior;
 else
 p=lt_nil;    
 [p,isfind]=find_parent(heap.tree,lc,0,p);
 lc.prior=prior;
  if isfind==-1
    p.left=lt_nil;
  else p.right=lt_nil;
  end;
  lh.size=1;
  lh.tree=lc;
  heap.size=heap.size-1;
  [heap,lh]=selforgheap_merge(heap,lh);
 end;  

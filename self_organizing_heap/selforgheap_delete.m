
%heap=selforgheap_delete(heap) deletes from a self-organizing heap current
%element,returns changed heap

function heap=selforgheap_delete(heap)
if nargout<1
  error('one output argument required.');
end  
global lt_nil;
lc=copy(heap.current);
if lc==heap.tree
    heap=heap_delminprior(heap);
elseif lc~=lt_nil
p=lt_nil;    
[p,isfind]=find_parent(heap.tree,lc,0,p); 
    llh=pointer;
    llh.tree=heap.current;
    llh.size=3;
    llh=selforgheap_delminprior(llh);
    if isfind==-1
     p.left=llh.tree
    else
     p.right=llh.tree
    end;
   heap.size=heap.size-1; 
   heap.current=heap.tree;
else
  error('choose current node');  
end;
free(lc);



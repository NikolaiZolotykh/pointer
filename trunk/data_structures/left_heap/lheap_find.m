
%lheap=lheap_find(lheap,data,prior) if the search is successful returns 
%heap, in which current element is found element;if element isn't found
%current element is lt_nil
%  Svetlana Gagarinova  (c) 2005,2006

function lheap=lheap_find(lheap,data,prior)
 if nargout<1
  error('one output argument required.');
 end  
 global lt_nil;
 b=bt_new;
 b.tree=lheap.tree;
 b.size=lheap.size;
 b=bt_reset_for_heap(b);
 for i=1:b.size
  if (b.current.data == data)&&(b.current.prior == prior)  
      lheap.current=b.current;
      return;
  end;    
  b=bt_next_for_heap(b);
 end; 
lheap.current=lt_nil;
  
%lheap=lheap_find(lheap,data,prior) if the search is successful returns 
%heap, in which current element is found element;if element isn't found
%current element is lt_nil

function lheap=lheap_findforRR(lheap,data)
 if nargout<1
  error('one output argument required.');
 end  
 global lt_nil;
 b=bt_new;
 b.tree=lheap.tree;
 b.size=lheap.size;
   b=bt_resetforheap(b);
 for i=1:b.size
  if (b.current.data.data.beg == data.beg)&&(b.current.data.data.fin == data.fin)...
      &&(b.current.data.prior == data.price)
      lheap.current=pointer;
      lheap.current.data=b.current.data;
      return;
  end;    
  b=bt_nextforheap(b);
 end; 
 lheap.current=pointer;
 lheap.current.data=lt_nil;
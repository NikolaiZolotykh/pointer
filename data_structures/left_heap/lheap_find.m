
%lheap=lheap_find(lheap,data,prior) if the search is successful returns 
%heap, in which current element is found element;if element isn't found
%current element is lt_nil
%  Svetlana Gagarinova  (c) 2005,2006

function lheap=lheap_find(lheap,data,prior)
 if nargout<1
  error('one output argument required.');
 end  
 global bt_nil;
 global lt_nil;
 b=bt_new;
 b.tree=lheap.tree;
 b.size=lheap.size;
 a=bt_nil;
 bt_nil=lt_nil;
 b=bt_reset(b);
 for i=1:b.size
  if (b.current.data.data == data)&&(b.current.data.prior == prior)  
      lheap.current.data=b.current.data;
      return;
  end;    
  b=bt_next(b);
 end; 
 bt_nil=a;
 lheap.current.data=lt_nil;
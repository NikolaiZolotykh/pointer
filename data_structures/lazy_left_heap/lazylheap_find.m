
%llheap=lazylheap_find(llheap,data,prior) if the search is successful returns 
%heap, in which current element is found element;if element isn't found
%current element is lt_nil
%  Svetlana Gagarinova  (c) 2005,2006

function llheap=lazylheap_find(llheap,data,prior)
 if nargout<1
  error('one output argument required.');
 end  
 global lt_nil;
 b=bt_new;
 b.tree=llheap.tree;
 b.size=llheap.size;
 b=bt_reset_for_heap(b);
 for i=1:b.size
  if(b.current.isexist==1)
    if (b.current.data == data)&&(b.current.prior == prior)  
      llheap.current=b.current;
      return;
    end;  
  end;    
  b=bt_next_for_heap(b);
 end; 
 llheap.current=llheap.tree;
 

 
 
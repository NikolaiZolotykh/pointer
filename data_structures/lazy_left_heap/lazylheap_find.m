
%llheap=lazylheap_find(llheap,data,prior) if the search is successful returns 
%heap, in which current element is found element;if element isn't found
%current element is lt_nil
%  Svetlana Gagarinova  (c) 2005,2006

function llheap=lazylheap_find(llheap,data,prior)
 if nargout<1
  error('one output argument required.');
 end  
 global bt_nil;
 global lt_nil;
 b=bt_new;
 b.tree=llheap.tree;
 b.size=llheap.size;
 a=bt_nil;
 bt_nil=lt_nil;
 b=bt_reset(b);
 for i=1:b.size
  if(b.current.data.isexist==1)
    if (b.current.data.data == data)&&(b.current.data.prior == prior)  
      llheap.current=b.current.data;
      return;
    end;  
  end;    
  b=bt_next(b);
 end; 
 bt_nil=a;
 llheap.current=llheap.tree;
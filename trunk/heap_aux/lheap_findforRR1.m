function lheap=lheap_findforRR1(lheap,e)
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
  if (b.current.data.beg == e.beg)&&(b.current.data.fin == e.fin)&&(b.current.prior == e.price)  
      lheap.current=b.current;
      return;
  end;    
  b=bt_next(b);
 end; 
 bt_nil=a;
 lheap.current=lt_nil;

%b=selforgheap_empty(heap)returns 1 if heap is empty and 0 if heap isn't
%empty 
%  Svetlana Gagarinova  (c) 2005,2006

function b=selforgheap_empty(heap)
 b=(heap.size==0);
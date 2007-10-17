
%b=lazylheap_empty(llheap)returns 1 if heap is empty and 0 if heap isn't empty 
%  Svetlana Gagarinova  (c) 2005,2006

function b=lazylheap_empty(llheap)
 b=(llheap.size==0);
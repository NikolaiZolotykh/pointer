
%heap=selforgheap_find(heap,data,prior) if the search is successful returns 
%heap, in which current element is found element;if element isn't found
%current element is lt_nil
%  Svetlana Gagarinova  (c) 2005,2006

function heap=selforgheap_find(heap,data,prior)
 heap=lheap_find(heap,data,prior);

%heap=selforgheap_free(heap)deletes heap and frees the memory 

function heap=selforgheap_free(heap)
global lt_nil; 
heap.tree=lt_free1(heap.tree);
heap.tree=copy(lt_nil); 
free(heap.tree);
heap.current=copy(lt_nil);  
free(heap.current);
heap.size=-1;

function lt=lt_free1(lt)
global lt_nil;
if lt.left~=lt_nil
  lt.left=lt_free1(lt.left);
end
if lt.right~=lt_nil
  lt.right=lt_free1(lt.right);
end
if lt~=lt_nil
  free(lt);
% illegal tree
end
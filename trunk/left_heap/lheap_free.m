
%lheap=lheap_free(lheap)deletes heap and frees the memory 

function lheap=lheap_free(lheap)
global lt_nil; 
lheap.tree=lt_free1(lheap.tree);
lheap.tree=copy(lt_nil); 
free(lheap.tree);
lheap.current.data=copy(lt_nil);  
free(lheap.current.data);
lheap.size=-1;

function lt=lt_free1(lt)
global lt_nil;
if lt.left.rank~=0
  lt.left=lt_free1(lt.left);
end
if lt.right.rank~=0
  lt.right=lt_free1(lt.right);
end
if lt.rank~=0
  free(lt);
% illegal tree
end


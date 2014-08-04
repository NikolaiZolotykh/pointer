
%llheap=lazylheap_free(llheap) deletes heap and frees the memory 

function llheap=lazylheap_free(llheap)
global lt_nil; 
llheap.tree=lazylt_free1(llheap.tree);
llheap.tree=copy(lt_nil); 
free(llheap.tree);
llheap.current=copy(lt_nil);  
free(llheap.current);
llheap.size=-1;

function llt=lazylt_free1(llt)
global lt_nil;
if llt.left~=lt_nil
  llt.left=lazylt_free1(llt.left);
end
if llt.right~=lt_nil
  llt.right=lazylt_free1(llt.right);
end
if llt~=lt_nil
  free(llt);
% illegal tree
end

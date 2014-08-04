
%llheap=lazylheap_delete(llheap) deletes from a lazy left-hand heap current element,
%returns changed heap

function llheap=lazylheap_delete(llheap)
if nargout<1
  error('one output argument required.');
end  
llheap.current.isexist=0;
llheap.current.data=0;
llheap.current.prior=-1;


%llheap=lazylheap_diffprior(llheap,prior) change priority of current element of
%lazy left-hand heap, returns changed heap  

function llheap=lazylheap_diffprior(llheap,prior)
 if nargout<1
  error('one output argument required.');
 end
 llh=lazylheap_new;
 llh=lazylheap_insert(llh,llheap.current.data,prior);
 llheap.current.isexist=0;
 llheap.current.data=0;
 llheap.current.prior=-1;
 [llheap,llh]=lazylheap_merge(llheap,llh); 
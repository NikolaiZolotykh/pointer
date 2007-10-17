
%llheap=lazylheap_diffprior(llheap,prior) change priority of current element of
%lazy left-hand heap, returns changed heap  
%  Svetlana Gagarinova  (c) 2005,2006

function llheap=lazylheap_diffprior(llheap,prior)
 if nargout<1
  error('one output argument required.');
 end
 llh=lazylheap_new;
 llh=lazylheap_insert(llh,llheap.current.data,prior);
 llheap.current.isexist=0;
 llheap.current.data='empty';
 llheap.current.prior=[];
 [llheap,llh]=lazylheap_merge(llheap,llh); 
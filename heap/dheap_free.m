
%dheap=dheap_free(dheap)deletes heap and frees the memory 

function dheap=dheap_free(dheap)
if nargin<1
  error('one input argument required.');
end
dheap.size=0;
dheap.d=0;
dheap.current=0;
free(dheap.data);
free(dheap.prior);
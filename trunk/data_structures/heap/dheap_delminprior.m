
%dheap=dheap_delminprior(dheap) deletes minimal element,returns changed
%heap
%  Svetlana Gagarinova  (c) 2005,2006

function dheap=dheap_delminprior(dheap)
if nargout<1
  error('one output argument required.');
end 
dheap.current=1;
dheap=dheap_delete(dheap);
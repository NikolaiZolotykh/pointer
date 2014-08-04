
%dheap=dheap_find(dheap,data,prior) if the search is successful returns 
%heap, in which current element is found element;if element isn't found
%dheap.current=0 

function dheap=dheap_find(dheap,data,prior)
 if nargout<1
  error('one output argument required.');
 end; 
 dheap.current=0;
 for i=1:dheap.size 
  if (dheap.data.data(i)==data)&&(dheap.prior.data(i)==prior)
    dheap.current=i;
    break;
  end;
 end;


%dheap=dheap_new create empty d-heap

function dheap=dheap_new(userd)
if nargout<1
  error('one output argument required.');
elseif nargin<1
  userd=2;
end  
dheap.size=0;
dheap.d=userd;
dheap.current=0;
dheap.data=pointer;
dheap.prior=pointer;
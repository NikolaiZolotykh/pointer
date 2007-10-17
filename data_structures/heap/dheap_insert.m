
%dheap=dheap_insert(dheap,data,prior) insert element into a heap and
%returns changed heap
%  Svetlana Gagarinova  (c) 2005,2006

function dheap=dheap_insert(dheap,data,prior)
if nargout<1 
    error('one output argument required.');
end
if nargin==2
    prior=data;
end;    
i=dheap.size+1;
p=floor(i/dheap.d);
while (i~=1)&&(prior<dheap.prior.data(p)) 
 dheap.data.data(i)=dheap.data.data(p);
 dheap.prior.data(i)=dheap.prior.data(p);
 i=p;
 p=floor(i/dheap.d);
end
dheap.data.data(i)=data;
dheap.prior.data(i)=prior;
dheap.size=dheap.size+1;
dheap.current=i;
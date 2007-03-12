
%node=âheap_findminprior(dheap) returns element with minimal priority as a
%struct
%  Svetlana Gagarinova  (c) 2005,2006

function node=dheap_findminprior(dheap)
node=struct('data',dheap.data.data(1),'prior',dheap.prior.data(1));
dheap.current=1;
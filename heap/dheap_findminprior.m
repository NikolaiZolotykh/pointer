
%node=lheap_findminprior(dheap) returns element with minimal priority as a
%struct

function node=dheap_findminprior(dheap)
node=struct('data',dheap.data.data(1),'prior',dheap.prior.data(1));
dheap.current=1;
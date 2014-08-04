ar=[1 2 3 4 5 6 7 8 9 10];
% Transform array to heap; 10-size,2-d for heap (here binary heap)
dh=dheap_arrtoheap(ar,10,2);
% Search minimal priority 
n=dheap_findminprior(dh)
%Delete minimal priority
dh=dheap_delminprior(dh);
%Find element with priority 5 and data 5
dh=dheap_find(dh,5,5);
% and change priority of this element(new priority 11)
dh=dheap_diffprior(dh,11);
% input new element with data 7 and priority 5
dh=dheap_insert(dh,7,5);
%Current size of heap
s=dheap_size(dh)
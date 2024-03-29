ar=[1 2 3 4 5 6 7 8];
n=8;
d=2;
%Transform array to heap; 10-size,2-d for heap (here binary heap)
lh=lazylheap_arrtoheap(ar,n)
% Search minimal priority 
[mf,lh]=lazylheap_findminprior(lh)
%Delete minimal priority
lh=lheap_delminprior(lh)
%Find element with priority 5 and data 5
lh=lazylheap_find(lh,5,5)
% and change priority of this element(new priority 11)
lh=lazylheap_diffprior(lh,11)
% input new element with data 7 and priority 5
lh=lazylheap_insert(lh,7,5);
%Current size of heap
s=dheap_size(lh);
%Merge 2 heaps
ar2=[12 13 14]
lh1=lazylheap_arrtoheap(ar2,3);
[lh lh1]=lazylheap_merge(lh,lh1)


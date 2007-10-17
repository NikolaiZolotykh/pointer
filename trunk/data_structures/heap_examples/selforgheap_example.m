
%example for self-organizing heaps;
%you can see here sintax of basic functions   
%  Svetlana Gagarinova  (c) 2005,2006

ar=[1 2 3 4 5 6 7 8];
n=8;
d=2;

%Transform array to heap
lh=selforgheap_arrtoheap(ar)
% Search minimal priority 
mf=selforgheap_findminprior(lh)
%Delete minimal priority
lh=selforgheap_delminprior(lh)
%Find element with priority 5 and data 5
lh=selforgheap_find(lh,5,5)
% and change priority of this element(new priority 4)
lh=selforgheap_decprior(lh,4)
% input new element with data 7 and priority 5
lh=selforgheap_insert(lh,7,5)
%Current size of heap
s=selforgheap_size(lh)
%Merge 2 heaps
ar2=[12 13 14 15 16]
lh1=selforgheap_arrtoheap(ar2);
[lh lh1]=selforgheap_merge(lh,lh1)

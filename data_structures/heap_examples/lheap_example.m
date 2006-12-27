
%example for left-hand heaps;
%you can see here sintax of basic functions   
%  Svetlana Gagarinova  (c) 2005,2006

ar=[1 2 3 4 5 6 7 8 9 10]
% Transform array to left-hand heap; 10-size
lh=lheap_arrtoheap(ar,10)
% Search minimal priority 
n=lheap_findminprior(lh)
%Delete minimal priority
lh=lheap_delminprior(lh)
%Find element with priority 5 and data 5
lh=lheap_find(lh,5,5)
% and decrease priority of this element(new priority 4)
lh=lheap_decprior(lh,4)
% input new element with data 7 and priority 5
lh=lheap_insert(lh,7,5)
%Current size of heap
s=lheap_size(lh)
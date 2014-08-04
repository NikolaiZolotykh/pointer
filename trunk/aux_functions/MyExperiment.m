global p;
p=lheap_new;
p=lheap_insert(p,1,1);
p=lheap_insert(p,2,2);
p=lheap_insert(p,3,3);
p=lheap_insert(p,4,4);
p=lheap_find(p,4,4);
p=lheap_diffprior1(p,10);
lheap_graph(p);
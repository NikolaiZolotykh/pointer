
%selforgheap_graph(heap)show heap as tree

function selforgheap_graph(heap)
clf
axis('auto');
hold('on');
sohlt_grap2(heap.tree,0,0,16,1);
hold('off');
axis('off');
figure(gcf);


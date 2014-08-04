
%lheap_graph(lheap)show heap as tree

function lazylheap_graph(lheap)
clf
axis('auto');
hold('on');
lt_grap2(lheap.tree,0,0,16,1);
hold('off');
axis('off');
figure(gcf);

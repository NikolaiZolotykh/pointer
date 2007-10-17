
%lheap_graph(lheap)show heap as tree
%  Svetlana Gagarinova  (c) 2005,2006

function lazylheap_graph(lheap)
clf
axis('auto');
hold('on');
lazylt_grap2(lheap.tree,0,0,16,1);
hold('off');
axis('off');
figure(gcf);

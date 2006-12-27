function djs_graph(djs)

%  djs_graph(djs) shows a graphic representation of the set djs.

%  Copyright 2005-2005 Svetlana Chernishova

clf
axis('auto');
hold('on');
djs_grap2(djs,0,0,16/(djs.count),1);
hold('off');
axis('off');
figure(gcf);
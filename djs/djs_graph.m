function djs_graph(djs)
% BT_GRAPH
%
%  BT_GRAPH(bt) shows a graphic representation of the binary tree bt.

% Copyright (c) MathWorks Inc. 1998-2001. All rights reserved.

clf
axis('auto');
hold('on');
djs_grap2(djs,0,0,16/(djs.count),1);
hold('off');
axis('off');
figure(gcf);


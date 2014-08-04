function bt_graph(bt)
% BT_GRAPH
%
%  BT_GRAPH(bt) shows a graphic representation of the binary tree bt.

% Copyright (c) MathWorks Inc. 1998-2001. All rights reserved.

clf
axis('auto');
hold('on');
bt_grap2(bt,0,0,16,1);
hold('off');
axis('off');
figure(gcf);


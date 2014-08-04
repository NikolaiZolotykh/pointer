function djs_graph(djs)
% BT_GRAPH
%
%  BT_GRAPH(bt) shows a graphic representation of the binary tree bt.

% Copyright (c) MathWorks Inc. 1998-2001. All rights reserved.

size=length(djs.data);
for i= 1:size
    temp(i)=djs.data(i);
end

count=djs_getcount(djs);

clf
axis('auto');
hold('on');
djs_grap2(temp,0,0,16/count,0.5);
hold('off');
axis('off');
figure(gcf);
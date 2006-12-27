function djs_graph(djs)

%  djs_graph(djs) shows a graphic representation of the set djs.
%  Subsets are presented as binary trees.

% Copyright 2005-2006 Svetlana Chernishova

size=length(djs.data);
for i= 1:size
    temp(i)=djs.data(i);
end

count=djs_getcount(djs);

clf
axis('auto');
hold('on');
djs_grap2(temp,0,0,5/count,0.5);
hold('off');
axis('off');
figure(gcf);
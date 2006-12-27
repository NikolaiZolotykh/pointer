function djs_graph(djs)

%  Helper function for djs_graph.

% Copyright 2005-2006 Svetlana Chernishova

size=length(djs);
for i= 1:size
    temp(i)=djs(i);
end

count=djs_getcount(djs);

clf
axis('auto');
hold('on');
djs_grap2(temp,0,0,16/count,0.5);
hold('off');
axis('off');
figure(gcf);
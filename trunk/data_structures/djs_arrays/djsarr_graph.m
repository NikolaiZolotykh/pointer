function djsarr_graph(djs)

%  djsarr_graph(djs) shows a graphic representation of the set djs.
%  Subsets are presented as binary trees.

% Copyright 2005-2006 Svetlana Chernishova

size=length(djs);
for i= 1:size
    temp(i)=djs(i);
end

count=djsarr_getcount(djs);

clf
axis('auto');
hold('on');
djsarr_grap2(temp,0,0,16/count,0.5);
hold('off');
axis('off');
figure(gcf);
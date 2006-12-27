function [djs,set]=djs_graph4(djs,name,set)

%  Helper function for djs_graph.

% Copyright 2005-2006 Svetlana Chernishova

sz=length(djs);
for i=1:sz
    if (djs(i)==name)
        djs(i)=0;
        set=set_insert(set,i);
       [djs,set]=djs_graph4(djs,i,set);
    end
end
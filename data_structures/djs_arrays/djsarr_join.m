function djs=djsarr_join(djs,x,y)

%  djs=djsarr_join(djs,x,y) unites two subsets x and y
%  and returns changed set djs.

% Copyright 2005-2006 Svetlana Chernishova

n=length(djs);
for i=1:n
    if djs(i)==x
        djs(i)=y;
    end
end
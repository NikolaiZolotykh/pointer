function size=djsarr_getsizesubset(djs,name)

%  size=djsarr_getsizesubset(djs,name) returns size of
%  subset with name "name".

% Copyright 2005-2006 Svetlana Chernishova

size=0;
n=length(djs);
for i=1:n
    if djs(i)==name
        size=size+1;
    end
end
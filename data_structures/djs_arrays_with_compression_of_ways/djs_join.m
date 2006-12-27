function djs=djs_join(djs,x,y)

%  djs=djs_join(djs,x,y) unites two subsets x and y
%  and returns changed set djs.

% Copyright 2005-2006 Svetlana Chernishova

if (djs.r(x)<djs.r(y))
    djs.data(x)=y;
elseif (djs.r(x)>djs.r(y))
       djs.data(y)=x;
else
       djs.data(x)=y;;
       djs.r(y)=djs.r(y)+1;
end
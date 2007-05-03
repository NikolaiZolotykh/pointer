function djs=djspoint_put(djs,element,name)

% djs=djspoint_put(djs,element,name) adds element to subset
% with name "name".

%  Copyright 2005-2005 Svetlana Chernishova

top=pointer;
top.parent=name;
top.data=element;

djs.tops=dl_puta(djs.tops,djs.tops.tail,top);
function djs=djs_create(djs, data)

%  djs=djs_create(djs,element) creates subset which contains
%  one element; name of subset is "element".

%  Copyright 2005-2005 Svetlana Chernishova

top=pointer;
top.data=data;
top.parent=data;
top.size=1;

djs.tree=dl_puta(djs.tree,djs.tree.head,top);
djs.count=djs.count+1;
function djs=djspoint_create(djs, data)

%  djs=djspoint_create(djs,element) creates empty subset with 
%  name "data".

%  Copyright 2005-2005 Svetlana Chernishova

top=pointer;
top.data=data;

djs.names=dl_puta(djs.names,djs.names.tail,top);
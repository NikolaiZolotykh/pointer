function djs=djspoint_put(djs,element,name)

% djs=djspoint_put(djs,element,name) adds element to subset
% with name "name".

%  Copyright 2005-2005 Svetlana Chernishova

top=pointer;
top.parent=name;
top.data=element;
top.size=0;

head1=djs.tree.head.next;
for i=1:djs.count
  node=head1.data;
  if node.parent==name
     node.size=node.size+1;
     djs.tree=dl_puta(djs.tree,djs.tree.tail,top);
     return
  end
  head1=head1.next;
end
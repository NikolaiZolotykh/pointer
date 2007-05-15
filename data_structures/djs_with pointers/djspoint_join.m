function djs=djspoint_join(djs,name1,name2)

%  djs=djspoint_join(djs,x,y) unites two subsets x and y
%  and returns changed set djs.

%  Copyright 2005-2005 Svetlana Chernishova

head=djs.tops.head.next;
while head~=0
   node=head.data;
   if (node.parent==name2)
      node.parent=name1;
   end
   head=head.next;
end
head=djs.names.head.next;
node=head.data;
while (node.data~=name2)
   head=head.next;
   node=head.data;
end
djs.names=dl_del(djs.names,head);
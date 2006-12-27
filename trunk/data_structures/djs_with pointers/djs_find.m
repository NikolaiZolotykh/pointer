function name=djs_find(djs,element)

%  name=djs_find(djs,element) returns name of subset, in which
%  element was found; if element wasn't found
%  function returns error 'There is no such element'.

%  Copyright 2005-2005 Svetlana Chernishova

temp=djs.tree;
head=temp.head.next;
while head~=0
    node=head.data;
    if node.data==element
        name=node.parent;
        return
    end
    head=head.next;
end
if head==0
    error('There is no such element');
end
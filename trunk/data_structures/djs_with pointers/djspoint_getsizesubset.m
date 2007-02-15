function size=djspoint_getsizesubset(djs,name)

%  size=djspoint_getsizesubset(djs,name) returns size of
%  subset with name "name".

%  Copyright 2005-2005 Svetlana Chernishova

head=djs.tree.head.next;
while head~=0
    node=head.data;
    if node.parent==name
        size=node.size;
        return
    end
    head=head.next;
end
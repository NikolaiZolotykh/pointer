function size=djspoint_getsizesubset(djs,name)

%  size=djspoint_getsizesubset(djs,name) returns size of
%  subset with name "name".

%  Copyright 2005-2005 Svetlana Chernishova

head=djs.tops.head.next;
size=0;
while head~=0
    node=head.data;
    if node.parent==name
        size=size+1;
    end
    head=head.next;
end
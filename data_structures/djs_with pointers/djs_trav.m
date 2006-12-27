function djs_trav(d)

%  djs_trav(d) displays all elements that set d contains 

%  Copyright 2005-2005 Svetlana Chernishova

head1=d.tree.head.next;
while head1~=0
    node=head1.data;
    disp(node.data);
    head1=head1.next;
end
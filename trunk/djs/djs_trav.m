function djs_trav(d)

head1=d.tree.head.next;
while head1~=0
    node=head1.data;
    disp(node.data);
    head1=head1.next;
end
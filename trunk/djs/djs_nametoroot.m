function root=djs_nametoroot(d,name)

head1=d.tree.head.next;
while (head1~=0)&&(head1.data.parent~=name)
    head1=head1.next;
end
if (head1~=0)
 root.data=head1.data.data;
 root.size=head1.data.size;
end;   
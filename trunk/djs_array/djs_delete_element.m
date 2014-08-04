function djs=djs_delete_element(djs,element)

flag =dl_empty(djs.tree);
if flag
  error('linked list is empty');
end
m=djs_find1(djs,element);
if m~='Not'
head1=djs.tree.head.next;
while head1~=0
    temp=head1.data;
    head2=head1.next;
    if temp.data==element
       name=temp.parent; 
       djs.tree=dl_del(djs.tree,head1);
       break;
    end
    head1=head2;
end

head1=djs.tree.head.next;
while head1~=0
    temp=head1.data;
    if temp.parent==name
       return
    end
    head1=head1.next;
end
if head1==0
    djs.count=djs.count-1;
end
else
    error('There is no such element');
end
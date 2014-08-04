function name=djs_find1(djs,element)

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
    name='Not';
end
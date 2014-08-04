function size=djs_getsize(djs,name)

head=djs.tree.head.next;
size=0;
while head~=0
    node=head.data;
    if node.parent==name
        size=size+1;
    end
    head=head.next;
end
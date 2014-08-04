function size=djs_getsize(djs,name)

head=djs.tree.head.next;
while head~=0
    node=head.data;
    if node.parent==name
        size=node.size;
        return
    end
    head=head.next;
end
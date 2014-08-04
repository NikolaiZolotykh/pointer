function djs_grap2(djs,x,y,dx,dy)

newx=x;
i=1;
head1=djs.tree.head.next;
while i~=djs.count+1
     node=head1.data;
     set=set_new;
     set=set_insert(set,node.data);
     head2=djs.tree.head.next;
     while head2~=0
        temp=head2.data;
        if temp.parent==node.parent
           set=set_insert(set,temp.data);
        end
        head2=head2.next;
     end
    newx=newx+dx;
    newy=y;
    djs_grap3(set.tree,newx,y,1,1);
    set=set_free(set);
    head1=head1.next;
    i=i+1;
end

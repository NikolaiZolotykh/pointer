function djspoint_grap2(djs,x,y,dx,dy)

%  Helper function for djspoint_graph.

%  Copyright 2005-2005 Svetlana Chernishova

newx=x;
head1=djs.names.head.next;
while head1~=0
     node=head1.data;
     text(newx+dx,y,num2str(node.data));
     set=set_new;
     head2=djs.tops.head.next;
     while head2~=0
        temp=head2.data;
        if temp.parent==node.data
           set=set_insert(set,temp.data);
        end
        head2=head2.next;
     end
    newx=newx+dx;
    newy=y;
    djspoint_grap3(set.tree,newx,y-0.2,1,1);
    set=set_free(set);
    head1=head1.next;
end
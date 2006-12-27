function djs=djs_delete_element(djs,element)

%  djs=djs_delete_element(djs,element) deletes element
%  and returns changed set djs.

%  Copyright 2005-2005 Svetlana Chernishova

flag =dl_empty(djs.tree);
if flag
  error('linked list is empty');
end

head1=djs.tree.head.next;
i=1;
while head1~=0
    temp=head1.data;
    if temp.data==element
       
        if i<=djs.count
           name=temp.parent; 
           head2=head1.next;
           while head2~=0
               node=head2.data;
               if (node.parent==name)&&(node.parent~=node.data)
                   temp.size=temp.size-1;
                   temp.data=node.data;
                   djs.tree=dl_del(djs.tree,head2);
                   return
               end    
               head2=head2.next;
           end
           if head2==0
               djs.tree=dl_del(djs.tree,head1);
               djs.count=djs.count-1;
               return
           end
        else
           name=temp.parent; 
           djs.tree=dl_del(djs.tree,head1);
           head2=djs.tree.head.next;
           j=1;
           while j<=djs.count
               node=head2.data;
               if node.parent==name
                   node.size=node.size-1;
                   return
               end    
               head2=head2.next;
               j=j+1;
           end
        end
    end    
    head1=head1.next;
    i=i+1;
end
if head1==0
    error('There is no such element');
end
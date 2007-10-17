function djs = djspoint_delete_subset(djs,name)

%  djs = djspoint_delete_subset(djs,name) deletes subset "name"
%  and returns changed set djs.

flag=0;
head1=djs.names.head.next;
while head1~=0
    node=head1.data;
    if node.data==name
       flag=1; 
       break
    else   
       head1=head1.next;
    end
end
if flag==1
    head1=djs.names.head.next;
    while head1~=0
        node=head1.data;
        if node.data==name
           djs.names=dl_del(djs.names,head1); 
           break
        else   
           head1=head1.next;
        end
    end
    head1=djs.tops.head.next;
    while head1~=0
        node=head1.data;
        temp=head1.next;
        if node.parent==name
           djs.tops=dl_del(djs.tops,head1); 
        end   
        head1=temp;
    end
end
function djs=djspoint_delete_element(djs,element)

%  djs=djspoint_delete_element(djs,element) deletes element
%  and returns changed set djs.

%  Copyright 2005-2005 Svetlana Chernishova

head=djs.tops.head.next;
while head~=0
    temp=head.data;
    if temp.data==element
       djs.tops=dl_del(djs.tops,head);
       return
    end    
    head=head.next;
end
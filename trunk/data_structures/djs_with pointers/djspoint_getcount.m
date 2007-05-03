function count=djspoint_getcount(djs)

%  count=djspoint_getcount(djs) returns number of subsets.

%  Copyright 2005-2005 Svetlana Chernishova

count=0;
head1=djs.names.head.next;
while head1~=0
    count=count+1;
    head1=head1.next;
end
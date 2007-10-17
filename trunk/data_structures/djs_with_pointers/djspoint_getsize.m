function size = djspoint_getsize(djs)

%  size = djspoint_getsize(djs) returns size of set djs.

emp=dl_empty(djs.tops);
size=0;
if emp~=1
    head1=djs.tops.head.next;
    while head1~=0
       size=size+1; 
       head1=head1.next;
    end
end
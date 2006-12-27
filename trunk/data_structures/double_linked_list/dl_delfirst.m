function dl=dl_delfirst(dl)
if nargin<1
  error('one input argument required.');
end
if nargout<1
  error('one output argument required.');
end
dl.head.next.next.prev=dl.head;
temp=dl.head.next;
dl.head.next=temp.next;
free(temp);
dl.head.len=dl.head.len-1;
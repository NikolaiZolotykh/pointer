function djs=djs_free(djs)

if nargin<1
  error('one input argument required.');
end
if nargout<1
  error('one output argument required.');
end

head=djs.tree.head;
while (head~=0)&&(head.next~=0)
  headnext=head.next;
  node=head.next.data;
  free(node);
  free(head);
  head=headnext;
end
if(head~=0) free(head); end;
djs.tree.head=0;
djs.tree.tail=0;
djs.count=-1;
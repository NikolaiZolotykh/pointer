function djs=djs_free(djs)

%  djs=djs_free(djs)deletes set and frees the memory.

%  Copyright 2005-2005 Svetlana Chernishova

if nargin<1
  error('one input argument required.');
end
if nargout<1
  error('one output argument required.');
end

head=djs.tree.head;
while head~=0
  headnext=head.next;
  node=head.next.data;
  free(node);
  free(head);
  head=headnext;
end
djs.tree.head=0;
djs.tree.tail=0;
djs.count=-1;
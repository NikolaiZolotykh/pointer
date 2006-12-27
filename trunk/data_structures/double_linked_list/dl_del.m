function dl=dl_del(dl,node)
% DL_DEL
%
%  dl=DL_DEL(dl,node) deletes node from the doubly linked list dl.

% Copyright (c) MathWorks Inc. 1998-2001. All rights reserved.

if nargin<2
  error('two input arguments required.');
end
if nargout<1
  error('one output argument required.');
end
 if node==dl.head
   error('head can not be removed');
 end  
% Due to dummy head, every node has a previous.
node.prev.next=node.next;

if node.next~=0
  node.next.prev=node.prev;
else
  dl.tail=node.prev;
end

free(node);
dl.head.len=dl.head.len-1;

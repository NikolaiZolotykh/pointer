function s=sl_del(s)
% SL_DEL
%
%  sl=SL_DEL(sl) deletes the first node in the singly linked
%  list head.

% Copyright (c) MathWorks Inc. 1998-2001. All rights reserved.

if nargin<1
  error('one input argument required.');
end
if nargout<1
  error('one output argument required.');
end

if sl_empty(s)
  error('linked list is empty');
end

node=s.head.next;
s.head.next=node.next;
s.head.len=s.head.len-1;
free(node);
if s.head.len==0
  s.tail=s.head;  
end

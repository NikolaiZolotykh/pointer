function sl=sl_del(sl)
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
flag =sl_empty(sl);
if flag
  error('linked list is empty');
end

node=sl.head;
sl.head=sl.head.next;
free(node);


function sl=sl_new
% SL_NEW
%
%  sl=SL_NEW returns an empty singly linked list.
%  Singly linked list has a dummy node as its head.

% Copyright (c) MathWorks Inc. 1998-2001. All rights reserved.

if nargout<1
  error('one output argument required.');
end

sl.head=pointer;
sl.head.next=0;
sl.tail=sl.head;


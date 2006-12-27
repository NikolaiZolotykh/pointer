function s=sl_new
% SL_NEW
%
%  s=SL_NEW returns an empty singly linked list.
%  Singly linked list has a dummy node as its head.

% Copyright (c) MathWorks Inc. 1998-2001. All rights reserved.

if nargout<1
  error('one output argument required.');
end

s.head=pointer;
s.head.next=0;
s.head.len=0;
s.tail=s.head;


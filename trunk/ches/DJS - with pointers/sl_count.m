function cnt=sl_count(sl)
% SL_COUNT
%
%  cnt=SL_COUNT(sl) returns the number of items in the singly linked list sl.

% Copyright (c) MathWorks Inc. 1998-2001. All rights reserved.

if nargin<1
  error('one input argument required.');
end

head=sl.head.next;
cnt=0;
while head~=0
  cnt=cnt+1;
  head=head.next;
end


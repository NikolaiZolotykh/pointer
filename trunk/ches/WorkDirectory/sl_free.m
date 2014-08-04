function head=sl_free(sl)
% SL_FREE
%
%  head=SL_FREE(sl) frees the memory allocated to the singly linked
%  list head.

% Copyright (c) MathWorks Inc. 1998-2001. All rights reserved.

if nargin<1
  error('one input argument required.');
end
if nargout<1
  error('one output argument required.');
end

head=sl.head;
while head~=0
  headnext=head.next;
  free(head);
  head=headnext;
end
sl.head=0;
sl.tail=0;


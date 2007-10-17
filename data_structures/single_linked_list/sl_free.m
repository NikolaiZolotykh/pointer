function head=sl_free(s)
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

head=s.head;
while head~=0
  headnext=head.next;
  free(head);
  head=headnext;
end
s.head=0;
s.tail=0;


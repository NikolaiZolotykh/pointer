function data=sl_get(sl)
% SL_GET
%
%  data=SL_GET(sl) returns the first element in a singly linked
%  list.

% Copyright (c) MathWorks Inc. 1998-2001. All rights reserved.

if nargin<1
  error('one input argument required.');
end

if sl_empty(sl)
  error('linked list is empty');
end

item=sl.head.next;
data=item.data;


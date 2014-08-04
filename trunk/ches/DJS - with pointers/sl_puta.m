function sl=sl_puta(sl,node,data)
% SL_PUTA
%
%  sl=SL_PUTA(sl,node,data) adds data after node in the singly
%  linked list sl.
%
%  To put an element
%   at start of list: sl_puta(sl,sl.head,data).
%   at end of list:   sl_puta(sl,sl.tail,data).
%
%  There is no limitation of data type, and different nodes can
%  contain different data types.

% Copyright (c) MathWorks Inc. 1998-2001. All rights reserved.

if nargin<3
  error('three input arguments required.');
end
if nargout<1
  error('one output argument required.');
end

new_node=pointer;
new_node.data=data;
new_node.next=node.next;
node.next=new_node;
if node==sl.tail
 sl.tail=new_node;
end


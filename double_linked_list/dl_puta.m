function dl=dl_puta(dl,node,data)
% DL_PUTA
%
%  dl=DL_PUTA(dl,node,data) adds data after node in the
%  doubly linked list dl.
%
%  To put an element
%   at start of list: dl_puta(dl,dl.head,data).
%   at end of list:   dl_puta(dl,dl.tail,data).
%
%  There is no limitation of data type, and different nodes can
%  contain different data types.

% Copyright (c) MathWorks Inc. 1998-2001. All rights reserved.

if nargin<3
  error('two input arguments required.');
end
if nargout<1
  error('one output argument required.');
end

new_node=pointer;
new_node.data=data;
new_node.prev=node;
new_node.next=node.next;
if node.next~=0
 node.next.prev=new_node;
else
 dl.tail=new_node;
end
node.next=new_node;
dl.head.len=dl.head.len+1;

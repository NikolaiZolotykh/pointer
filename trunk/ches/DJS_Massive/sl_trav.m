function sl_trav(sl,func,varargin)
% SL_TRAV
%
%  SL_TRAV(sl,func,...) traverses the singly linked list sl,
%  while calling the supplied func on every node data, together
%  with any optional parameters supplied to SL_TRAV.
%
%  A simple search could be conducted by supplying a function which
%  compares the node data with the wanted data.

% Copyright (c) MathWorks Inc. 1998-2001. All rights reserved.

if nargin<2
  error('two or three input arguments required.');
end

head=sl.head.next;
while head~=0
  if nargin>2
    feval(func,head.data,varargin{:});
  else
    feval(func,head.data);
  end
  head=head.next;
end


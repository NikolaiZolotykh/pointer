function data=dl_get(dl)
% DL_GET
%
%  data=DL_GET(dl) returns the first element in a doubly linked
%  list.

% Copyright (c) MathWorks Inc. 1998-2001. All rights reserved.

if nargin<1
  error('one input argument required.');
end
if nargout<1
  error('one output argument required.');
end

data=sl_get(dl);


function dl_trav(dl,func,varargin)
% DL_TRAV
%
%  DL_TRAV(head,func,...) traverses the doubly linked list dl,
%  while calling the supplied func on every node data, together
%  with any optional parameters supplied to DL_TRAV.

% Copyright (c) MathWorks Inc. 1998-2001. All rights reserved.

sl_trav(dl,func,varargin{:});


function dl=dl_new
% DL_NEW
%
%  dl=DL_NEW returns an empty doubly linked list.

% Copyright (c) MathWorks Inc. 1998-2001. All rights reserved.

dl=sl_new;
dl.head.prev=0;
dl.head.len=0;


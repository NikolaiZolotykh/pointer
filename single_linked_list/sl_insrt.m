function s=sl_insrt(s,data)
% SL_INSRT
%
%  sl=SL_INSRT(sl,data) insert data as the first node of the list sl.
%
%  There is no limitation of data type, and different nodes can
%  contain different data types.

% Copyright (c) MathWorks Inc. 1998-2001. All rights reserved.

s=sl_puta(s,s.head,data);


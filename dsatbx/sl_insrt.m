function sl=sl_insrt(sl,data)
% SL_INSRT
%
%  sl=SL_INSRT(sl,data) insert data as the first node of the list sl.
%
%  There is no limitation of data type, and different nodes can
%  contain different data types.

% Copyright (c) MathWorks Inc. 1998-2001. All rights reserved.

sl_puta(sl,sl.head,data);


function sl=sl_app(sl,data)
% SL_APP
%
%  sl=SL_APP(sl,data) appends data to the list
%
%  There is no limitation of data type, and different nodes can
%  contain different data types.

% Copyright (c) MathWorks Inc. 1998-2001. All rights reserved.

sl = sl_puta(sl,sl.tail,data);


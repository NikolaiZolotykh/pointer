function st=st_push(st,x)
% ST_PUSH
%
%  st=ST_PUSH(st,x) inserts x as the top element of the stack st.

% Copyright (c) MathWorks Inc. 1998-2001. All rights reserved.

st=sl_puta(st,st.head,x);


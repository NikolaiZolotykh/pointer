function qu=qu_enqu(qu,x)
% QU_ENQU
%
%  qu=QU_ENQU(qu,x) inserts x as the last element in the queue.

% Copyright (c) MathWorks Inc. 1998-2001. All rights reserved.

qu=sl_puta(qu,qu.tail,x);


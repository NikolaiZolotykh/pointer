function B=mt_ref2(A,S)

% Copyright (c) MathWorks Inc. 1998-2001. All rights reserved.

B=A;
l=length(S);

for i=1:l
  Si=S(i);
  switch Si.type
    case '()'
      B = B(Si.subs{:});
    case '{}'
      B = B{Si.subs{:}};
    case '.'
      eval(['B=B.' Si.subs ';']);
  end
end



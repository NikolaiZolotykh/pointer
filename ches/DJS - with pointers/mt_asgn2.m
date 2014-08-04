function A=mt_asgn2(A,S,B)

% Copyright (c) MathWorks Inc. 1998-2001. All rights reserved.

l=length(S);
b='A';
c='=B;';

for i=1:l
  Si=S(i);
  switch Si.type
    case '()'
      b=sprintf('%s(%d',b,Si.subs{:});
      c=[')' c];
    case '{}'
      b=sprintf('%s{%d',b,Si.subs{:});
      c=['}' c];
    case '.'
      b=sprintf('%s.%s',b,Si.subs);
  end
end

eval([b c]);


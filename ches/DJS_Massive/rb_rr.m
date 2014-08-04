function rb=rb_rr(rb,X)

% Copyright (c) MathWorks Inc. 1998-2001. All rights reserved.

global bt_nil rb_black rb_red

Y=X.left;

X.left=Y.right;
if Y.right~=bt_nil
  Y.right.parent=X;
end

if Y~=bt_nil
  Y.parent=X.parent;
end
if X.parent~=0
  if X==X.parent.right
    X.parent.right=Y;
  else
    X.parent.left=Y;
  end
else
  rb=Y;
end

Y.right=X;
if X~=bt_nil
  X.parent=Y;
end


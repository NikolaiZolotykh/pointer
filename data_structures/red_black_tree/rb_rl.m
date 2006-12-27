function rb=rb_lr(rb,X)

% Copyright (c) MathWorks Inc. 1998-2001. All rights reserved.

global bt_nil rb_black rb_red

Y=X.right;

X.right=Y.left;
if Y.left~=bt_nil
  Y.left.parent=X;
end

if Y~=bt_nil
  Y.parent=X.parent;
end
if X.parent~=0
  if X==X.parent.left
    X.parent.left=Y;
  else
    X.parent.right=Y;
  end
else
  rb=Y;
end

Y.left=X;
if X~=bt_nil
  X.parent=Y;
end


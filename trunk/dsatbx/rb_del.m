function rb=rb_del(rb,Z)
% RB_DEL
%
%  rb=rb_del(rb,Z) deletes the node Z from
%  the red-black binary tree rb.

% Copyright (c) MathWorks Inc. 1998-2001. All rights reserved.

global bt_nil rb_black rb_red

if Z==0 | Z==bt_nil
  return;
end

if (Z.left==bt_nil) | (Z.right==bt_nil)
  Y=Z;
else
  Y=Z.right;
  while Y.left~=bt_nil
    Y=Y.left;
  end
end

if Y.left~=bt_nil
  X=Y.left;
else
  X=Y.right;
end

X.parent=Y.parent;
if Y.parent==0
   rb=X;
else
  if Y==Y.parent.left
    Y.parent.left=X;
  else
    Y.parent.right=X;
  end
end

if Y~=Z
  Z.key=Y.key;
  Z.data=Y.data;
end
if Y.color==rb_black
  [rb,X]=rb_del_fixup(rb,X);
end
free(Y);

return;


function [rb,X]=rb_del_fixup(rb,X) 

global bt_nil rb_black rb_red

while (X~=rb) & (X.color==rb_black)
  if X==X.parent.left
    W=X.parent.right;
    if W.color==rb_red
      W.color=rb_black;
      X.parent.color=rb_red;
      rb=rb_rl(rb,X.parent);
      W=X.parent.right;
    end
    if (W.left.color==rb_black) & (W.right.color==rb_black)
      W.color=rb_red;
      X=X.parent;
    else
      if W.right.color==rb_black
	W.left.color=rb_black;
	W.color=rb_red;
	rb=rb_rr(rb,W);
	W=X.parent.right;
      end
      W.color=X.parent.color;
      X.parent.color=rb_black;
      W.right.color=rb_black;
      rb=rb_rl(rb,X.parent);
      X=rb;
    end
  else
    W=X.parent.left;
    if W.color==rb_red
      W.color=rb_black;
      X.parent.color=rb_red;
      rb=rb_rr(rb,X.parent);
      W=X.parent.left;
    end
    if (W.right.color==rb_black) & (W.left.color==rb_black)
      W.color=rb_red;
      X=X.parent;
    else
      if W.left.color==rb_black
	W.right.color=rb_black;
	W.color=rb_red;
	rb=rb_rl(rb,W);
	W=X.parent.left;
      end
      W.color=X.parent.color;
      X.parent.color=rb_black;
      W.left.color=rb_black;
      rb=rb_rr(rb,X.parent);
      X=rb;
    end
  end
end
X.color=rb_black;

return;


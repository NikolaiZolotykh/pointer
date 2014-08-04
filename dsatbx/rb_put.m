function rb=rb_put(rb,data,key)
% RB_PUT
%
%  rb=rb_put(rb,data,key) inserts the node (data,key) into
%  the red-black binary tree rb.

% Copyright (c) MathWorks Inc. 1998-2001. All rights reserved.

global bt_nil rb_black rb_red

current=rb;
parent=0;
while current~=bt_nil
  if key==current.key
    return;
  end
  parent=current;
  if key<current.key
    current=current.left;
  else
    current=current.right;
  end
end

X=pointer;
X.data=data;
X.key=key;
X.parent=parent;
X.left=bt_nil;
X.right=bt_nil;
X.color=rb_red;

if parent~=0
  if key<parent.key
    parent.left=X;
  else
    parent.right=X;
  end
else
  rb=X;
end

while (X~=rb) & (X.parent.color==rb_red)
  if X.parent==X.parent.parent.left
    Y=X.parent.parent.right;
    if Y.color==rb_red
      X.parent.color=rb_black;
      Y.color=rb_black;
      X.parent.parent.color=rb_red;
      X=X.parent.parent;
    else
      if X==X.parent.right
	X=X.parent;
	rb=rb_rl(rb,X);
      end

      X.parent.color=rb_black;
      X.parent.parent.color=rb_red;
      rb=rb_rr(rb,X.parent.parent);
    end
  else
    Y=X.parent.parent.left;
    if Y.color==rb_red
      X.parent.color=rb_black;
      Y.color=rb_black;
      X.parent.parent.color=rb_red;
      X=X.parent.parent;
    else
      if X==X.parent.left
	X=X.parent;
	rb=rb_rr(rb,X);
      end
      X.parent.color=rb_black;
      X.parent.parent.color=rb_red;
      rb=rb_rl(rb,X.parent.parent);
    end
  end
end
rb.color=rb_black;


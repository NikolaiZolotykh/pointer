function bt=bt_new

% Copyright (c) MathWorks Inc. 1998-2001. All rights reserved.

global bt_nil rb_black rb_red 
global avl_heightchange avl_counter avl_lh avl_eh avl_rh

if isempty(bt_nil)
  rb_black=0;
  rb_red=1;
  avl_lh = -1;
  avl_eh = 0;
  avl_rh = 1;
  bt_nil=pointer;
  bt_nil.parent=0;
  bt_nil.left=bt_nil;
  bt_nil.right=bt_nil;
  bt_nil.color=rb_black;
  bt_nil.data=[];
end

bt=bt_nil;


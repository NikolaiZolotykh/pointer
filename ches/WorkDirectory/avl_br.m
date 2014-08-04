function avl = avl_br(avl)

global bt_nil avl_heightchange avl_lh avl_eh avl_rh

current = avl;
rs = current.right;

switch rs.bf
case avl_rh
   current.bf = avl_eh;
   rs.bf = avl_eh;
   current = avl_rl(current);
   avl_heightchange = 0;
   avl = current;
case avl_eh
   current.bf = avl_rh;
   rs.bf = avl_lh;
   current = avl_rl(current);
   avl_heightchange = 0;
   avl = current;
case avl_lh
   ls = rs.left;
   switch ls.bf
   case avl_rh
      current.bf = avl_lh;
      rs.bf = avl_eh;
   case avl_eh
      current.bf = avl_eh;
      rs.bf = avl_eh;
   case avl_lh
      current.bf = avl_eh;
      rs.bf = avl_rh;
   end
   ls.bf = avl_eh;
   current.right = avl_rr(rs);
   current = avl_rl(current);
   avl = current;
end


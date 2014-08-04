function avl = avl_bl(avl)

global bt_nil avl_heightchange avl_lh avl_eh avl_rh

current = avl;
rs = current.left;

switch rs.bf
case avl_lh
   current.bf = avl_eh;
   rs.bf = avl_eh;
   current = avl_rr(current);
   avl_heightchange = 0;
   avl = current;
case avl_eh
   current.bf = avl_lh;
   rs.bf = avl_rh;
   current = avl_rr(current);
   avl_heightchange = 0;
   avl = current;
case avl_rh
   ls = rs.right;
   switch ls.bf
   case avl_lh
      current.bf = avl_rh;
      rs.bf = avl_eh;
   case avl_eh
      current.bf = avl_eh;
      rs.bf = avl_eh;
   case avl_rh
      current.bf = avl_eh;
      rs.bf = avl_lh;
   end
   ls.bf = avl_eh;
   current.left = avl_rl(rs);
   current = avl_rr(current);
   avl = current;
end

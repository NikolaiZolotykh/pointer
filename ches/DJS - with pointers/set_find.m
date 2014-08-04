function d=set_find(s,data)
global bt_nil;
d=avl_find(s,data);
 if d==bt_nil
   d=0;
 end;  
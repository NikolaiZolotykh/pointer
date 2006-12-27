% d=set_find(s,data)finds element 'data' in set 's' and returns node of
% tree with this element or 0 if there is not such element in set
%  Svetlana Chernishova (c) 2005,2006
%  Svetlana Gagarinova  (c) 2005,2006

function d=set_find(s,data)
global bt_nil;
d=avl_find(s,data);
 if d==bt_nil
   d=0;
 end;  
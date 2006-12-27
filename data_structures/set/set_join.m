% set=set_join(set1,set2)unites two sets and returns result 
%  Svetlana Chernishova (c) 2005,2006
%  Svetlana Gagarinova  (c) 2005,2006

function set=set_join(set1,set2)
 global bt_nil;
set.tree=set_itercpy(set1.tree);
set.current.data=bt_nil;
set.currpos=-1;
set.stack=st_new;
set.size=set1.size;
set2=set_reset(set2);
while ~set_isend(set2)
  set=set_insert(set,set2.current.data.data); 
  set2=set_next(set2);
end
set=set_insert(set,set2.current.data.data);  

function settree=set_itercpy(bt)    
 global bt_nil;
if bt==bt_nil
   settree=bt_nil; 
   return ;
end

settree=copy(bt);
settree.left=set_itercpy(bt.left);
settree.right=set_itercpy(bt.right);

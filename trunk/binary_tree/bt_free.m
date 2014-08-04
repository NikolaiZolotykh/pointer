function bt=bt_free(bt)
global bt_nil; 
if nargout<1
 warning('Tree unequal NULL.Put output argument')
end 
bt.tree=bt_free1(bt.tree);
bt.tree=copy(bt_nil) 
free(bt.tree);
bt.current=copy(bt_nil)  
free(bt.current);
bt.stack=st_free(bt.stack);
bt.currpos=-1;
bt.size=-1;
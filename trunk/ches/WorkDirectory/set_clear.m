function newset=set_clear(set);

newset.tree=avl_free(set.tree);
newset.size=-1;
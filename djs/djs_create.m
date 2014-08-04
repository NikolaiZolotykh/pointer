function djs=djs_create(djs, data)

n=djs_find1(djs,data);
if n=='Not'
  top=pointer;
  top.data=data;
  top.parent=data;
  top.size=1;

  djs.tree=dl_puta(djs.tree,djs.tree.head,top);

  djs.count=djs.count+1;
else 
    error ('Such element exists.')
end
function djs=djs_put(djs,element,name)

n=djs_find1(djs,element);
if n=='Not'
  top=pointer;
  top.parent=name;
  top.data=element;
  top.size=0;

  head1=djs.tree.head.next;
  for i=1:djs.count
    node=head1.data;
    if node.parent==name
       node.size=node.size+1;
       djs.tree=dl_puta(djs.tree,djs.tree.tail,top);
       return
    end
    head1=head1.next;
  end
else 
    error ('Such element exists.')
end
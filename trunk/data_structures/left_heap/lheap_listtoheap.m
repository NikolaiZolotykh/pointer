
%lheap=lheap_listtoheap(list) transforms list into left-hand heap
%  Svetlana Gagarinova  (c) 2005,2006

function lheap=lheap_listtoheap(list)
if nargout<1
  error('one output argument required.');
end  
global lt_nil;
s=sl_new;
if isempty(lt_nil)
  lt_nil=pointer;
  lt_nil.data=[];
  lt_nil.rank=0;
  lt_nil.parent=pointer;
  lt_nil.parent.data=lt_nil;
  lt_nil.left=lt_nil;
  lt_nil.right=lt_nil;
  lt_nil.prior=[];
end
 size=sl_count(list);
for i=1:size
 a.size=1;
 a.tree=pointer;
 n=sl_get(list);
 a.tree.data.beg=n.data.beg;
 a.tree.data.fin=n.data.fin;
 a.tree.prior=n.prior;
 list=sl_del(list);
 a.tree.right=lt_nil;
 a.tree.left=lt_nil;
 a.tree.rank=1;
 a.tree.parent=pointer;
 a.tree.parent.data=lt_nil;
 s=sl_insrt(s,a);
end;
while sl_count(s)>1
 a=sl_get(s);
 s=sl_del(s);
 b=sl_get(s);
 s=sl_del(s);
 [a,b]=lheap_merge(a,b);
 s=sl_appnd(s,a);
end;    
if(size~=0)
lheap.tree=a.tree;
lheap.size=a.size;
lheap.current=pointer;
lheap.current.data=copy(lt_nil);
s=sl_free(s);
else
 lheap=lheap_new;
end; 
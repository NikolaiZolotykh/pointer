
%llheap=lazylheap_arrtoheap(array,size) transforms array into lazy left-hand heap
%  Svetlana Gagarinova  (c) 2005,2006

function llheap=lazylheap_listtoheap(list)
 if nargout<1
  error('one output argument required.');
end  
global lt_nil;
s=sl_new;
if isempty(lt_nil)
  lt_nil=pointer;
  lt_nil.data=[];
  lt_nil.rank=0;
  lt_nil.parent=lt_nil;
  lt_nil.left=lt_nil;
  lt_nil.right=lt_nil;
  lt_nil.prior=[];
end
 size=sl_count(list);
for i=1:size
 a.size=1;
 n=sl_get(list);
 a.tree=pointer;
 a.tree.data.beg=n.data.beg;
 a.tree.data.fin=n.data.fin;
 a.tree.prior=n.prior;
 list=sl_del(list);
 a.tree.rank=1;
 a.tree.right=lt_nil;
 a.tree.left=lt_nil;
 a.tree.parent=lt_nil;
 a.tree.isexist=1;
 s=sl_insrt(s,a);
end;
while sl_count(s)>1
 a=sl_get(s);
 s=sl_del(s);
 b=sl_get(s);
 s=sl_del(s);
 [a,b]=lazylheap_merge(a,b);
 s=sl_appnd(s,a);
end;    
if ~size
    llheap=lazylheap_new;
else
llheap.tree=a.tree;
llheap.size=a.size;
end;
s=sl_free(s);
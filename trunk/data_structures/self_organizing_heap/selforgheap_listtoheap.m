
%heap=selforgheap_arrtoheap(array,size) transforms array into 
%self-organizing heap
%  Svetlana Gagarinova  (c) 2005,2006

function heap=selforgheap_listtoheap(list)
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
for i=1:sl_count(list)
 a.size=1;
 a.tree=pointer;
 n=sl_get(list);
 a.tree.data.beg=n.data.beg;
 a.tree.data.fin=n.data.fin;
 a.tree.prior=n.prior;
 list=sl_del(list);
 a.tree.right=lt_nil;
 a.tree.left=lt_nil;
 s=sl_insrt(s,a);
end;
if(sl_count(s)>1)
    while sl_count(s)>1
     a=sl_get(s);
     s=sl_del(s);
     b=sl_get(s);
     s=sl_del(s);
     a=selforgheap_merge(a,b);
     s=sl_appnd(s,a);
    end;    
 heap.tree=a.tree;
 heap.size=a.size;
elseif(sl_count(s)==1)
    a=sl_get(s);
    heap.tree=a.tree;
    heap.size=a.size;
else
 heap=selforgheap_new;
end;
s=sl_free(s);
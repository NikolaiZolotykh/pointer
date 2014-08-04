
%llheap=lazylheap_arrtoheap(array,size) transforms array into lazy left-hand heap

function llheap=lazylheap_arrtoheap(array,size)
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
for i=1:size
 a.size=1;
 a.tree=pointer;
 a.tree.data=array(i);
 a.tree.prior=array(i);
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
llheap.tree=a.tree;
llheap.size=a.size;
llheap.current=pointer;
llheap.current=llheap.tree;
s=sl_free(s);
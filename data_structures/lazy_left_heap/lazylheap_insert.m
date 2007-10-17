
%llheap=lazylheap_insert(llheap,data,prior) insert element into a heap and
%returns changed heap
%  Svetlana Gagarinova  (c) 2005,2006

function llheap=lazylheap_insert(llheap,data,prior)
 if nargout<1
  error('one output argument required.');
 end  
 if nargin==2
    prior=data;
 end;    
 global lt_nil;
 lh1.size=1;
 lh1.tree=pointer;
 lh1.tree.data=data;
 lh1.tree.prior=prior;
 lh1.tree.rank=1;
 lh1.tree.left=lt_nil;
 lh1.tree.right=lt_nil;
 lh1.tree.parent=lt_nil;
 lh1.tree.isexist=1;
 lh1.current=lh1.tree;
 [llheap,lh1]=lazylheap_merge(llheap,lh1); 
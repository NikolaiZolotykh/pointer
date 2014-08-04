
%[node,llheap]=lazylheap_findminprior(llheap) returns element with minimal priority 
%as a struct and heap without empty nodes at top

function [node,llheap]=lazylheap_findminprior(llheap)
 if nargout<1
  error('one output argument required.');
 end
 listnodes=sl_new;
 k=0;
 if llheap.tree.isexist==0
 [listnodes,k]=go_empty_nodes(llheap.tree,k,listnodes);
 while sl_count(listnodes)>1
  a=sl_get(listnodes);
  listnodes=sl_del(listnodes);
  b=sl_get(listnodes);
  listnodes=sl_del(listnodes);
  a=lheap_merge(a,b);
  listnodes=sl_appnd(listnodes,a);
 end;  
 llheap.size=llheap.size-k;
 a=sl_get(listnodes);
 llheap.tree=a.tree;
 llheap.size=a.size;
 llheap.current=llheap.tree;
 node.data=llheap.tree.data;
 node.prior=llheap.tree.prior;
 else
   node.data=llheap.tree.data;
   node.prior=llheap.tree.prior;
 end;  
 listnodes=sl_free(listnodes);
  
 
function [listnodes,k]=go_empty_nodes(tree,k,listnodes)
 global lt_nil; 
 if(tree~=lt_nil)&&(tree.isexist==0)
     k=k+1;
     [listnodes,k]=go_empty_nodes(tree.left,k,listnodes);
     [listnodes,k]=go_empty_nodes(tree.right,k,listnodes);
 elseif tree~=lt_nil
     tmpheap.size=1;
     tmpheap.tree=tree;
     listnodes=sl_insrt(listnodes,tmpheap);
 end;    
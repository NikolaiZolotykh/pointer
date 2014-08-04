
%llheap=lazylheap_delminprior(llheap) deletes minimal element,returns 
%changed heap

function llheap=lazylheap_delminprior(llheap)
 if nargout<1
  error('one output argument required.');
 end
 global lt_nil;
 listnodes=sl_new;
 k=0;
 minprior=intmax;
 if llheap.tree.isexist==0
 [listnodes,k,minprior]=go_empty_nodes(llheap.tree,k,minprior,listnodes);
 isdel=0;
 while sl_count(listnodes)>1
  a=sl_get(listnodes);
  if(a.tree.prior==minprior)&&(isdel==0)
      if (a.tree.left~=lt_nil)&&(a.tree.right~=lt_nil)
       b.tree=a.tree.left;
       b.size=1;
       c.tree=a.tree.right;
       c.size=1;
       listnodes=sl_del(listnodes);
       free(a.tree);
      elseif a.tree.left~=lt_nil
        b.tree=a.tree.left;
        b.size=1; 
        listnodes=sl_del(listnodes);
        free(a.tree);
        c=sl_get(listnodes);
        listnodes=sl_del(listnodes);
      elseif a.tree.right~=lt_nil
        b.tree=a.tree.right;
        b.size=1; 
        listnodes=sl_del(listnodes);
        free(a.tree);
        c=sl_get(listnodes);
        listnodes=sl_del(listnodes);
      else
        listnodes=sl_del(listnodes);
        free(a.tree);
        b=sl_get(listnodes);
        listnodes=sl_del(listnodes);
        c=sl_get(listnodes);
        listnodes=sl_del(listnodes);
      end;   
      b=lheap_merge(b,c);
      listnodes=sl_appnd(listnodes,b);
      isdel=1;
  else
    listnodes=sl_del(listnodes);  
    b=sl_get(listnodes);
    listnodes=sl_del(listnodes);
    a=lheap_merge(a,b);
    listnodes=sl_appnd(listnodes,a);
  end;  
 end;  
 llheap.current=llheap.tree;
 llheap.size=llheap.size-k-1;
 a=sl_get(listnodes);
 llheap.tree=a.tree;
 else
  llheap=lheap_delminprior(llheap);
 end; 
 listnodes=sl_free(listnodes);
   
 
function [listnodes,k,minprior]=go_empty_nodes(tree,k,minprior,listnodes)
 global lt_nil; 
 if(tree~=lt_nil)&&(tree.isexist==0)
     k=k+1;
     [listnodes,k,minprior]=go_empty_nodes(tree.left,k,minprior,listnodes);
     [listnodes,k,minprior]=go_empty_nodes(tree.right,k,minprior,listnodes);
 elseif tree~=lt_nil
     if tree.prior<minprior
         minprior=tree.prior;
     end;    
     tmpheap.size=1;
     tmpheap.tree=tree;
     listnodes=sl_insrt(listnodes,tmpheap);
 end;    
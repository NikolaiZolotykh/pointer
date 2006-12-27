 
 % service function for lheap_example_graphics
 %  Svetlana Gagarinova  (c) 2005,2006

function [a b c]=lheap_TreeToVect(bt)
q=qu_new();
a(1,1)=0;
b(1,1)=bt.tree.prior;
c(1,1)=bt.tree.data;
i=2;
j=1;
bt.current=bt.tree;
fl=1;
while(fl==1)
 if(bt.current.left.rank~=0)
  a(1,i)=j;
  b(1,i)=bt.current.left.prior;
  c(1,i)=bt.current.left.data;
  i=i+1;
  q=qu_enqu(q,bt.current.left);
 end;
 if(bt.current.right.rank~=0)
  a(1,i)=j;
  b(1,i)=bt.current.right.prior;
  c(1,i)=bt.current.right.data;
  i=i+1;
  q=qu_enqu(q,bt.current.right);
 end;
 if(qu_empty(q)==0)
   bt.current=qu_front(q);
   q=qu_dequ(q);
   j=j+1;
   fl=1;
 else
   fl=0;
 end;  
end; 

%service function for *heap_example_graphics
%  Svetlana Gagarinova  (c) 2005,2006

function [a b c]=TreeToVect(bt)
q=qu_new();
a(1,1)=0;
if(~isempty(bt.tree.prior))
  b(1,1)=bt.tree.prior;
  c(1,1)=bt.tree.data;
else
  b(1,1)=-1;c(1,1)=-1;
end;  
i=2;
j=1;
bt.current=bt.tree;
fl=1;
while(fl==1)
 if(bt.current.left.rank~=0)
  a(1,i)=j;
  if(~isempty(bt.current.left.prior))
     b(1,i)=bt.current.left.prior;
     c(1,i)=bt.current.left.data;
  else
      b(1,i)=-1;c(1,i)=-1;
  end;    
  i=i+1;
  q=qu_enqu(q,bt.current.left);
 end;
 if(bt.current.right.rank~=0)
  a(1,i)=j;
  if(~isempty(bt.current.right.prior))
     b(1,i)=bt.current.right.prior;
     c(1,i)=bt.current.right.data;
  else
      b(1,i)=-1;c(1,i)=-1;
  end;    
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
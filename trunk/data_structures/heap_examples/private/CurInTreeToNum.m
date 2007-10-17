
% service function for dheap_example_graphics
%  Svetlana Gagarinova  (c) 2005,2006

function num=CurInTreeToNum(bt)
q=qu_new();
i=2;
j=1;
b=bt.tree;
num=0;
if(b.data~=bt.current.data)
 fl=1;
else
 fl=0;
 num=1;
end; 
while(fl==1)
 if(b.left.rank~=0)
  if(b.left.data~=bt.current.data) 
   i=i+1;
   q=qu_enqu(q,b.left);
  else
   fl=0;
   num=i;
  end; 
 end;
 if(b.right.rank~=0)
  if(b.right.data~=bt.current.data) 
   i=i+1;
   q=qu_enqu(q,b.right);
  else
   fl=0;
   num=i;
  end; 
 end;
 if(qu_empty(q)==0)
   b=qu_front(q);
   q=qu_dequ(q);
   j=j+1;
   fl=1;
 else
   fl=0;
 end;  
end; 
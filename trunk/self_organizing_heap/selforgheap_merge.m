
%[lh1,lh2]=selforgheap_merge(lh1,lh2)returns merged heaps into lh1 and 
%empty second heap into lh2

function [lh1,lh2]=selforgheap_merge(lh1,lh2)
 if nargout<1
  error('one output argument required.');
 end  
 global lt_nil
 if (lh2.size~=0)&&(lh1.size~=0)
 [lh1.tree,lh2.tree]=lheap_merge1(lh1.tree,lh2.tree);
 lh1.size=lh1.size+lh2.size;
 lh2.size=0;
 elseif(lh1.size==0)
   lh1.size=lh2.size;
   lh1.tree=copy(lh2.tree);
   lh2.tree=lt_nil;
   lh2.size=0;
 end;
 
function [lht1,lht2]=lheap_merge1(lht1,lht2) 
 global lt_nil
if (lht1~=lt_nil)&&(lht2~=lt_nil)
  if lht1.prior>lht2.prior
    a=copy(lht1);
    lht1=copy(lht2);
    lht2=a;
  end;
  [lht1.right,lht2]=lheap_merge1(lht1.right,lht2);
  if (lht1.left~=lt_nil)&&(lht1.right~=lt_nil)
   a=copy(lht1.left);
   lht1.left=copy(lht1.right);
   lht1.right=a;
  elseif lht1.left~=lt_nil
      lht1.right=copy(lht1.left);
      lht1.left=lt_nil;
  elseif lht1.right~=lt_nil
      lht1.left=copy(lht1.right);
      lht1.right=lt_nil; 
  end;    
 elseif lht1==lt_nil
     lht1=copy(lht2);
 end; 
  
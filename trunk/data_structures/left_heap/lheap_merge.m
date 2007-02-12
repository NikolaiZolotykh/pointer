
%[lh1,lh2]=lheap_merge(lh1,lh2)returns merged heaps into lh1 and empty second
%heap into lh2
%  Svetlana Gagarinova  (c) 2005,2006

function [lh1,lh2]=lheap_merge(lh1,lh2)
 if nargout<1
  error('one output argument required.');
 end  
 global lt_nil;
 if (lh2.size~=0)&&(lh1.size~=0)
 parent=pointer;
 parent=lt_nil;   
 [lh1.tree,lh2.tree]=lheap_merge1(lh1.tree,lh2.tree,parent);
 lh1.size=lh1.size+lh2.size;
 lh2.size=0;
 elseif(lh1.size==0)
   lh1.size=lh2.size;
   lh1.tree=copy(lh2.tree);
   if(lh2.tree.left.rank~=0)
      lh2.tree.left.parent.data=lh1.tree;
   end; 
   if(lh2.tree.right.rank~=0)
      lh2.tree.right.parent.data=lh1.tree;
   end;
   lh1.tree.parent=pointer;
   lh1.tree.parent.data=lt_nil;
   lh2.tree=lt_nil;
   lh2.size=0;
%  else
%    lh2.size=lh1.size;
%    lh2.tree=copy(lh1.tree);
%    lh2.tree.parent=lt_nil;
%    lh1.tree=lt_nil;
%    lh1.size=0; 
 end;
 
function [lht1,lht2]=lheap_merge1(lht1,lht2,parent) 
 global lt_nil;
if (lht1.rank~=0)&&(lht2.rank~=0)
  if lht1.prior>lht2.prior
    a=copy(lht1);
    if(lht1.left.rank~=0)
       lht1.left.parent.data=a;
    end;  
    if(lht1.right.rank~=0)
       lht1.right.parent.data=a;  
    end;  
    lht1=copy(lht2);
    if(lht2.left.rank~=0)
       lht2.left.parent.data=lht1;
    end;  
    if(lht2.right.rank~=0)
       lht2.right.parent.data=lht1;  
    end;  
    lht1.parent=pointer;
    lht1.parent.data=parent;
    lht2=a;
  end;
  [lht1.right,lht2]=lheap_merge1(lht1.right,lht2,lht1);
  if lht1.left.rank<lht1.right.rank
     a=copy(lht1.left);
     if(lht1.left.rank~=0)
      free(lht1.left);
     end; 
     lht1.left=copy(lht1.right);
     if(lht1.left.left.rank~=0)
       lht1.left.left.parent.data=lht1.left;
     end;  
     if(lht1.left.right.rank~=0)
       lht1.left.right.parent.data=lht1.left;  
     end;  
     if(lht1.right.rank~=0)
      free(lht1.right);
     end;
     lht1.right=copy(a);
     if(lht1.right.left.rank~=0)
       lht1.right.left.parent.data=lht1.right;
     end;
     if(lht1.right.right.rank~=0)
       lht1.right.right.parent.data=lht1.right;  
     end;  
  end;
  if lht1.left.rank<lht1.right.rank
     lht1.rank=lht1.left.rank+1;
  else
     lht1.rank=lht1.right.rank+1; 
  end;   
 elseif lht1.rank==0
     lht1=lht2;
     lht1.parent=pointer;
     lht1.parent.data=parent;
 end; 
  

%lheap=lheap_diffprior(lheap,prior) change priority of current element of
%left-hand heap, returns changed heap  

function lheap=lheap_decprior(lheap,prior)
 if nargout<1
  error('one output argument required.');
 end  
 if prior>lheap.current.data.prior;
  error('You can not increase priority');
 end 
 global lt_nil;
 lc=copy(lheap.current);
 lc.data.prior=prior;
 if(lc.data==lheap.tree)
  return;
 else
  p=lc.data.parent.data;
  if p.left==lc.data
    p.left=lt_nil;
  else p.right=lt_nil;
  end;
  while p~=lt_nil
   r1=0;r2=0;   
   if p.left~=lt_nil
     r1=p.left.rank;
   end;
   if p.right~=lt_nil
     r2=p.right.rank;
   end;  
   if r1<r2
    newrank=r1+1;
    a=copy(p.left);
    p.left=copy(p.right);
    p.right=copy(a);
   else
    newrank=r2+1;
   end;
   if p.rank~=newrank
    p.rank=newrank;
   else
     break;
   end;  
   p=p.parent.data;
  end;
  lh.size=1;
  lh.tree=lc.data;
  lheap.size=lheap.size-1;
  [lheap,lh]=lheap_merge(lheap,lh);
 end;
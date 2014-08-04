
%lheap=lheap_delete(lheap) deletes from a left-hand heap current
%element,returns changed heap

function lheap=lheap_delete(lheap)
if nargout<1
  error('one output argument required.');
end  
global lt_nil;
lc=copy(lheap.current);
if lc==lheap.tree
    lheap=lheap_delminprior(lheap);
elseif lc~=lt_nil
    parent=lheap.current.parent;
    llh=pointer;
    llh.tree=lheap.current;
    llh.size=3;
    if parent.left==llh.tree
     llh=lheap_delminprior(llh);
     parent.left=llh.tree
    else
     llh=lheap_delminprior(llh);
     parent.right=llh.tree
    end;
    while parent~=lt_nil
    r1=0;r2=0; 
    if parent.left.rank~=0
     r1=parent.left.rank;
    end;
    if parent.right.rank~=0
     r2=parent.right.rank;
    end;  
    if r1<r2
     newrank=r1+1;
     a=copy(parent.left);
     parent.left=copy(parent.right);
     parent.right=copy(a);
    else
     newrank=r2+1;
    end;
    if parent.rank~=newrank
     parent.rank=newrank;
    else
      break;
    end;  
    parent=parent.parent;
    end;
   lheap.size=lheap.size-1; 
   lheap.current=lheap.tree;
else
  error('choose current node');  
end;
free(lc);

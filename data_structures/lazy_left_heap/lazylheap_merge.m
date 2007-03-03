
%[llh1,llh2]=lazylheap_merge(llh1,llh2)returns merged heaps into llh1 and empty second
%heap into llh2
%  Svetlana Gagarinova  (c) 2005,2006

function [llh1,llh2]=lazylheap_merge(llh1,llh2)
 if nargout<1
  error('one output argument required.');
 end  
 global lt_nil
 if (llh2.size~=0)&&(llh1.size~=0)
     parent=pointer;
     parent.size=llh1.size+llh2.size+1;
     parent.current=pointer;
     parent.current=copy(lt_nil);
     parent.tree=pointer;
     parent.tree.isexist=0;
     parent.tree.data=-1;
     parent.tree.prior=-1;
     if llh1.tree.rank<llh2.tree.rank
        parent.tree.rank=llh1.tree.rank+1;
     else
        parent.tree.rank=llh2.tree.rank+1; 
     end;   
     if llh1.tree.rank>=llh2.tree.rank
        parent.tree.left=copy(llh1.tree);
        parent.tree.right=llh2.tree;
        if(llh1.tree.right.rank~=0)
         llh1.tree.right.parent=parent.tree.left;
        end;
        if(llh1.tree.left.rank~=0)
         llh1.tree.left.parent=parent.tree.left;  
        end;  
        llh1.tree.parent=parent.tree;
        llh2.tree.parent=parent.tree;
     else
        parent.tree.left=llh2.tree;
        parent.tree.right=copy(llh1.tree);
        if(llh1.tree.right.rank~=0)
         llh1.tree.right.parent=parent.tree.right;
        end;
        if(llh1.tree.left.rank~=0)
         llh1.tree.left.parent=parent.tree.right;  
        end; 
        llh1.tree.parent=parent.tree;
        llh2.tree.parent=parent.tree;
     end;  
     llh1=parent;
     llh2.size=0;
 elseif(llh1.size==0)
     llh1.size=llh2.size;
     llh1.tree=copy(llh2.tree);
     if(llh2.tree.left.rank~=0)
      llh2.tree.left.parent=llh1.tree;
     end; 
     if(llh2.tree.right.rank~=0)
       llh2.tree.right.parent=llh1.tree;
     end;
     llh1.tree.parent=lt_nil;
     llh1.current=llh1.tree;
     llh2.tree=lt_nil;
     llh2.size=0;
%  else
%      llh2.size=llh1.size;
%      llh2.tree=llh1.tree;
%      llh2.tree.parent=lt_nil;
%      llh1.tree=lt_nil;
%      llh1.size=0; 
 end;
 
  
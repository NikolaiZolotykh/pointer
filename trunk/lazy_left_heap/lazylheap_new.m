
%lazylheap=lazylheap_new create empty lazy left-hand heap

function lazylheap=lazylheap_new
if nargout<1
  error('one output argument required.');
end  
global lt_nil;
if isempty(lt_nil)
  lt_nil=pointer;
  lt_nil.data=[];
  lt_nil.rank=0;
  lt_nil.parent=lt_nil;
  lt_nil.left=lt_nil;
  lt_nil.right=lt_nil;
  lt_nil.prior=[];
  %lt_nil.isexist=0;
 end
lazylheap.size=0;
lazylheap.current=pointer;
lazylheap.current=copy(lt_nil);
lazylheap.tree=pointer;
lazylheap.tree=lt_nil;

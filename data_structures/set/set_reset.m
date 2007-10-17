
% in set=set_reset(set) one of elements became  current element 
%  Svetlana Chernishova (c) 2005,2006
%  Svetlana Gagarinova  (c) 2005,2006

function set=set_reset(set)
if nargout<1
  error('one output argument required.');
end 
set=avl_reset(set);
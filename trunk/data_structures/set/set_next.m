
%set=set_next(set) goes to next element in set
%  Svetlana Chernishova (c) 2005,2006
%  Svetlana Gagarinova  (c) 2005,2006

function set=set_next(set)
if nargout<1
  error('one output argument required.');
end 
set=avl_next(set);
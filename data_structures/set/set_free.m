% set=set_free(set) deletes set
%  Svetlana Chernishova (c) 2005,2006
%  Svetlana Gagarinova  (c) 2005,2006

function set=set_free(set)
if nargin<1
  error('one input argument required.');
end
set=avl_free(set);

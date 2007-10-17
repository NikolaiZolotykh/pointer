% set=set_new creates new set
%  Svetlana Chernishova (c) 2005,2006
%  Svetlana Gagarinova  (c) 2005,2006

function set=set_new
if nargout<1
  error('one output argument required.');
end
set=avl_new;

    
% s=set_delete(s,data) deletes 'data' from set
%  Svetlana Chernishova (c) 2005,2006
%  Svetlana Gagarinova  (c) 2005,2006

function s=set_delete(s,data)
if nargout<1
  error('one output argument required.');
end 
s=avl_del(s,data);

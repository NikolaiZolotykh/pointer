function s=set_delete(s,data)
if nargout<1
  error('one output argument required.');
end 
s=avl_del(s,data);

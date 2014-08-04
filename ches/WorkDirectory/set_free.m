function set=set_free(set)
if nargin<1
  error('one input argument required.');
end
set=avl_free(set);

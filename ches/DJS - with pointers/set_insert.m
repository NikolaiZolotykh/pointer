function s=set_insert(s,data)
global yn;
if nargout<1 
    error('one output argument required.');
end  
if (isnumeric(data))&&(isscalar(data))
  s=avl_put(s,data,data);  
else
 error('input argument must be numeric array 1-by-1');
end 
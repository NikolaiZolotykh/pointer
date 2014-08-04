function [name,djs]=djs_find(djs,element)

%  [name,djs]=djs_find(djs,element) perfoms compression of way
%  from root to element and return changed massive. Also
%  if the search is successful function returns name of subset, in which
%  element was found; if element wasn't found
%  function returns error 'There is no such element'.

if nargout<2
   error('Output argument required.');
end
if (djs.data(element)==0)
   error('There is no such element');
end
% search of name of subset which contains element
temp=element;
while djs.data(element)~=element
    element=djs.data(element);
end
name=element;
% compression of way
while djs.data(temp)~=temp
    temp1=temp;
    temp=djs.data(temp);
    djs.data(temp1)=name;
end
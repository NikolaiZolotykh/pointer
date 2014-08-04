function [name, djs] = djs_find(djs,element)

temp=djs_find1(djs,element);
if temp=='Not'
    error('There is no such element.');
else
    name=temp;
end
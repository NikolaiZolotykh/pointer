function djs=djs_put(djs,element,name)

% djs=djs_put(djs,element,name) adds element to subset
% with name "name"

djs.data(element)=name;
djs.r(element)=0;
if djs.r(name)==0
    djs.r(name)=1;
end
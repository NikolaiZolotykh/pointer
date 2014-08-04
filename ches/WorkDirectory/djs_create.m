function djs=djs_create(djs, element)

%  djs=djs_create(djs,element) creates subset which contains
%  one element; name of subset is "element" .

djs.data(element)=element;
djs.r(element)=0;
function djs=djs_delete_element(djs,element)

if djs(element)==element
    error('You should perform djs_delete_subset');
end

djs(element)=0;
size=length(djs);
i=size;
while djs(i)==0
    djs(i)=[];
    i=i-1;
end
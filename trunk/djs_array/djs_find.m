function djs=djs_find(djs,element)

temp=element;
while djs.data(element)~=element
    element=djs.data(element);
end
name=element;
while djs.data(temp)~=temp
    temp1=temp;
    temp=djs.data(temp);
    djs.data(temp1)=name;
end
function [root,d]=djs_elemtoroot(d,element)

temp=element;
while d.data(element)~=element
    element=d.data(element);
end
root.data=element;
root.size=d.r(element);
while d.data(temp)~=temp
    temp1=temp;
    temp=d.data(temp);
    d.data(temp1)=root.data;
end

% [root,d]=djs_elemtoroot(d,element) service function for round robbin
% algorithm; return root for element of set  
%  Svetlana Gagarinova  (c) 2005,2006

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
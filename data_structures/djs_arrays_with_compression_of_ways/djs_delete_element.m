function djs = djs_delete_element(djs,element)

%  djs = djs_delete_element(djs,element) deletes element
%  from set djs, ranks of vertexes are not change

sz=djs_getsize(djs)
if (djs.data(element)==element)
    error('You can not delete this element - it defines name of subset')
else
    for i=1:sz
        if (djs.data(i)==element)
            djs.data(i)=djs.data(element);
        end
    end
    djs.data(element)=0;
    djs.r(element)=0;
end
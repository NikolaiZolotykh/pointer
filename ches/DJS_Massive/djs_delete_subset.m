function djs=djs_delete_subset(djs,name)

size=length(djs);
for i=1:size
    if djs(i)==name
        djs(i)=0;
    end
end
i=size;
while djs(i)==0
    djs(i)=[];
    i=i-1;
end
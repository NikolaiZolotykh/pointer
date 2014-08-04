function size=djs_getsizesubset(djs,name)

size=0;
n=length(djs);
for i=1:n
    if djs(i)==name
        size=size+1;
    end
end
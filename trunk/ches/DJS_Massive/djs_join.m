function djs=djs_join(djs,x,y)

n=length(djs);
for i=1:n
    if djs(i)==x
        djs(i)=y;
    end
end
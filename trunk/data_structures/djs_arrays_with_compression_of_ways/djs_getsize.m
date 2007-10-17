function size = djs_getsize(djs)

% size = djs_getsize(djs) returns size of set djs

size=0;
n=length(djs.data);
for i=1:n
    if djs.data(i)~=0
        size=size+1;
    end
end
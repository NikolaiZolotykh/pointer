function djs=djs_join(djs,x,y)

if (djs.r(x)<djs.r(y))
    djs.data(x)=y;
elseif (djs.r(x)>djs.r(y))
       djs.data(y)=x;
else
       djs.data(x)=y;
       djs.r(y)=djs.r(y)+1;
end


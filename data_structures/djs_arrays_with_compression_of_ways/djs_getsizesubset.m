function size = djs_getsizesubset(djs, name)

%  size = djs_getsizesubset(djs, name) returns size of
%  subset name

if djs.data(name)==0
    error('There is no such subset');
else
   size=1; 
   sz=length(djs.data);
   for i=1:sz
       if (djs.data(i)==name)&&(djs.data(i)~=i)
           sz1=djs_getsizesubset(djs,i);
           size=size+sz1;
       end
   end
end
function djs = djs_delete_subset(djs, name)

%  djs = djs_delete_subset(djs, name) deletes subset name

if djs.data(name)==0
    error('There is no such subset');
else
   djs.data(name)=0;
   djs.r(name)=0;
   sz=length(djs.data);
   for i=1:sz
       if (djs.data(i)==name)&&(djs.data(i)~=i)
           djs=djs_delete_subset(djs,i);
       end
   end
end
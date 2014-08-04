
%dheap=dheap_delete(dheap) deletes from a d-heap current element,
%returns changed heap

function dheap=dheap_delete(dheap)
if nargout<1
  error('one output argument required.');
end 
i=dheap.current;
prior=dheap.prior.data(dheap.size);
data=dheap.data.data(dheap.size);
d=dheap.d;
h1=log(dheap.size*(d-1)+1)/log(d);
h=ceil(h1);
h1=ceil(log(i*(d-1)+1)/log(d));
if(h~=h1)
 p=d*i; 
 if d*i+d-1<=dheap.size
   a=d*i+d-1; else a=dheap.size;end;
 for j=d:a
   if dheap.prior.data(p)>dheap.prior.data(j) 
     p=j;
   end;
 end;   
 while(h1~=h)&&(prior>dheap.prior.data(p))
  dheap.data.data(i)=dheap.data.data(p);
  dheap.prior.data(i)=dheap.prior.data(p);
  i=p;h1=h1+1;
  if i*d<=dheap.size
   p=i*d;else break;end;  
  if d*i+d-1<=dheap.size
   a=d*i+d-1; else a=dheap.size;end;
  for j=i*d:a
   if dheap.prior.data(p)>dheap.prior.data(j) 
     p=j;
   end;
  end;
 end; 
end; 
dheap.data.data(i)=data;
dheap.prior.data(i)=prior;
dheap.size=dheap.size-1;
dheap.current=1;
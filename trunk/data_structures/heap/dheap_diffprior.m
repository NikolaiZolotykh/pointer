
%dheap=dheap_diffprior(dheap,prior) change priority of current element of
%d-heap, returns changed heap 
%  Svetlana Gagarinova  (c) 2005,2006

function dheap=dheap_diffprior(dheap,prior)
if nargout<1
  error('one output argument required.');
end
i=dheap.current;
data=dheap.data.data(i);
d=dheap.d;
if prior>dheap.prior.data(i)
 h1=log(dheap.size+1)/log(d);
 h=ceil(h1);
 h1=ceil(log(i+1)/log(d));
  if(h~=h1)
  if d*i-d+2<=dheap.size
    a=d*i-d+2;
    p=a;
  if a+d-1<=dheap.size
      b=a+d-1;
  else
      b=dheap.size;
  end;    
  for j=a:b
    if dheap.prior.data(p)>dheap.prior.data(j) 
      p=j;
    end;
  end;   
  while(h1~=h)&&(prior>dheap.prior.data(p))
   tmp1=dheap.data.data(i);
   tmp2=dheap.prior.data(i);
   dheap.data.data(i)=dheap.data.data(p);
   dheap.prior.data(i)=dheap.prior.data(p);
   dheap.data.data(p)=tmp1;
   dheap.prior.data(p)=tmp2;
   i=p;h1=h1+1;
   if d*i-d+2<=dheap.size
    a=d*i-d+2;
    p=a;
    if a+d-1<=dheap.size
      b=a+d-1;
    else
      b=dheap.size;
    end;    
   for j=a:b
    if dheap.prior.data(p)>dheap.prior.data(j)
      p=j;
    end;
   end;
  end; 
 end;
 end;
 end;
 else
 p=floor(i/d);
 while (i~=1)&&(prior<dheap.prior.data(p)) 
  dheap.data.data(i)=dheap.data.data(p);
  dheap.prior.data(i)=dheap.prior.data(p);
  i=p;
  p=floor(i/d);
 end; 
end; 
dheap.data.data(i)=data;
dheap.prior.data(i)=prior;
dheap.current=1;
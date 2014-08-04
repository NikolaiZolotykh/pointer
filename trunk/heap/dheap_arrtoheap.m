
%dheap=dheap_arrtoheap(array,n,d) transforms array into d-heap

function dheap=dheap_arrtoheap(array,n,d)
if nargout<1
  error('one output argument required.');
elseif ~isnumeric(array)
 error('input argument must be numeric array');
end
if nargin==2
  d=2;
elseif nargin<2
 error('input arguments');   
end; 
dheap.d=d;
dheap.data=pointer;
dheap.data.data=array;
dheap.prior=pointer;
dheap.prior.data=array;
dheap.size=n;
h1=log(dheap.size+1)/log(d);%(dheap.size*(d-1)+1)/log(d)
h=ceil(h1);
for i=n:1
 prior=dheap.prior.data(i);
 h1=ceil(log(i+1)/log(d));
 if(h~=h1)
  if d*i-d+1<=dheap.size
    a=d*i-d+1;
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
   dheap.data.data(i)=dheap.data.data(p);
   dheap.prior.data(i)=dheap.prior.data(p);
   i=p;h1=h1+1;
   if d*i-d+1<=dheap.size
    a=d*i-d+1;
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
 dheap.data.data(i)=prior;
 dheap.prior.data(i)=prior;
end;

dheap.current=1;

%dheap=dheap_arrtoheap(array,d) transforms array into d-heap
%  Svetlana Gagarinova  (c) 2005,2006

function dheap=dheap_arrtoheap(array,d)
if nargout<1
  error('one output argument required.');
elseif ~isnumeric(array)
 error('input argument must be numeric array');
end
if nargin==1
  d=2;
elseif nargin<1
 error('input arguments');   
end; 
dheap.d=d;
dheap.data=pointer;
dheap.data.data=array;
dheap.prior=pointer;
dheap.prior.data=array;
dheap.size=length(array);
n=length(array);
h1=log(dheap.size*(d-1)+1)/log(d);
h=ceil(h1);
for i=1:n
 prior=dheap.prior.data(n+1-i);
 h1=ceil(log((n+1-i)*(d-1)+1)/log(d));
 if(h~=h1)
  if d*(n+1-i)-d+2<=dheap.size
    a=d*(n+1-i)-d+2; %левый потомок элемента
    p=a;
  if a+d-1<=dheap.size
      b=a+d-1;%номер правого потомка
  else
      b=dheap.size;
  end;    
  for j=a:b
    if dheap.prior.data(p)>dheap.prior.data(j) 
      p=j;
    end;
  end;   
  while(h1~=h)&&(prior>dheap.prior.data(p))
   dheap.data.data(n+1-i)=dheap.data.data(p);
   dheap.prior.data(n+1-i)=dheap.prior.data(p);
   i=-p+n+1;h1=h1+1;
   if d*(n+1-i)-d+2<=dheap.size
    a=d*(n+1-i)-d+2;
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
 dheap.data.data(n+1-i)=prior;
 dheap.prior.data(n+1-i)=prior;
end;

dheap.current=1;
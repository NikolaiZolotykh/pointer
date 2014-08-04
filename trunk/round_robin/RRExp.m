%   m=5000;
%   n=100;
% m=400;
 for j=1:1 %(10)
   n=20*j;
   m=2*n
  %m=100*j;
 d=2*m/(n*n-n);
%  d=1;
fl=0;
while(fl==0)
rand('state',sum(100*clock));
a = sprandsym(n,d);
for i=1:n
    a(i,i)=0;
end;    
if(IsCoherent(a))
fl=1;
b=MatrixToList(a);
%tic
s=RoundRobbinLL(b);
%toc
%c=ListToMatrix(s,n);
b=sl_free(b);
s=sl_free(s);
end;  
end;
end;
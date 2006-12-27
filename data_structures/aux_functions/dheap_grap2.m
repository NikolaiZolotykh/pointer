
%dheap_grap2(dheap,x,y,dx,dy)service function
%  Svetlana Gagarinova  (c) 2005,2006

function dheap_grap2(dheap,x,y,dx,dy)
s=dheap.size;
d=dheap.d;
newx=x;
newy=y;fx=x;
for i=1:ceil(log(s*(d-1)+1)/log(d))
 k=1;
 for j=1:exp((i-1)*log(d)) 
  ind=(exp((i-1)*log(d))-1)/(d-1)+j;
  if ind<=s
  plot([x newx],[y newy],'o-');
  text(newx+0.4,newy,strcat('prior:',num2str(dheap.prior.data(ind))));
  text(newx+0.5,newy-0.1,strcat('data:',num2str(dheap.data.data(ind))));
  else break;
  end;    
  if k==d
   x=x+2*dx; 
   k=0;
  end;
  k=k+1;
  newx=newx+dx;
  newy=newy;
 end;
 y=newy;
 x=fx;
 newy=newy-dy;
 newx=fx-dx/4;
 fx=newx;
 dx=dx/2;
end; 


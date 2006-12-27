
%dheap_demo show HeapSort using d-heaps
%you can see how step-by-step change heap during HeapSort
%  Svetlana Gagarinova  (c) 2005,2006

function dheap_demo
array=[3 2 1 4 5];
n=5;
disp('input data:');
for i=1:n
 disp(array(i));
end; 
d=dheap_arrtoheap(array,n);
figure('Resize','off','NumberTitle','off','Name','dheap_demo');
axis([-6,5,-2,0.25]);
axis('manual')
hold('on');
dheap_grap2(d,0,0,16,1);
hold('off');
 axis('off');
 figure(gcf);
  x=-6;y=0.05;dx=0.5;
 text(x,y,'array:');
for i=1:n
  text(x+1,y,num2str(array(i)));
  x=x+dx;
 end;
pause(1);
i=0;
for i=0:(n-2)
 a=dheap_findminprior(d);
 d=dheap_delminprior(d);
 array(n-i)=a.data;
 clf
 axis([-6,5,-2,0.25]);
 axis('manual')
 hold('on');
 dheap_grap2(d,0,0,16,1);
 hold('off');
 axis('off');
 figure(gcf);
 x=-6;
 text(x,y,'array:');
for i=1:n
  text(x+1,y,num2str(array(i)));
  x=x+dx;
 end;
 pause(1);
end; 
close(gcf);
a=dheap_findminprior(d);
d=dheap_delminprior(d);
array(1)=a.data;
dheap_free(d);
disp('output data:');
for i=1:n
  disp(array(i));
end; 

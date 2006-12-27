
%lheap_demo show HeapSort using left-hand heaps
%you can see how step-by-step change heap during HeapSort 
%  Svetlana Gagarinova  (c) 2005,2006

function lazylheap_demo
array=[4 2 3 5 1];
n=5;
disp('input data:');
for i=1:n
 disp(array(i));
end; 
d=lazylheap_arrtoheap(array,n);
figure('Resize','off','NumberTitle','off','Name','lazylheap_demo');
axis([-6,5,-2,0.25]);
axis('manual')
hold('on');
lazylt_grap2(d.tree,0,0,3.4,0.4);
hold('off');
 axis('off');
 figure(gcf);
  x=-6;y=0.05;dx=0.5;
 text(x,y,'array:');
for i=1:n
  text(x+1,y,num2str(array(i)));
  x=x+dx;
 end;
pause(3);
i=0;
for i=0:(n-2)
 [a,d]=lazylheap_findminprior(d);
 d=lazylheap_delminprior(d);
 array(n-i)=a.data;
 clf
 axis([-6,5,-2,0.25]);
 axis('manual')
 hold('on');
 lazylt_grap2(d.tree,0,0,3.4,0.4);
 hold('off');
 axis('off');
 figure(gcf);
 x=-6;
 text(x,y,'array:');
for i=1:n
  text(x+1,y,num2str(array(i)));
  x=x+dx;
 end;
 pause(3);
end; 
close(gcf);
a=lazylheap_findminprior(d);
d=lazylheap_delminprior(d);
array(1)=a.data;
lazylheap_free(d);
disp('output data:');
for i=1:n
  disp(array(i));
end;
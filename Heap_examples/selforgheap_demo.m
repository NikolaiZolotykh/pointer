
%selforgheap_demo show HeapSort using self-organizing heaps
%you can see how step-by-step change heap during HeapSort 

function selforgheap_demo
array=[4 2 3 5 1];
n=5;
disp('input data:');
for i=1:n
 disp(array(i));
end; 
d=selforgheap_arrtoheap(array,n);
axis([-6,5,-2,0.25]);
axis('manual')
hold('on');
sohlt_grap2(d.tree,0,0,3.4,0.4);
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
 a=selforgheap_findminprior(d);
 d=selforgheap_delminprior(d);
 array(n-i)=a.data;
 clf
 axis([-6,5,-2,0.25]);
 axis('manual')
 hold('on');
 sohlt_grap2(d.tree,0,0,3.4,0.4);
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
a=selforgheap_findminprior(d);
d=selforgheap_delminprior(d);
array(1)=a.data;
selforgheap_free(d);
disp('output data:');
for i=1:n
  disp(array(i));
end;
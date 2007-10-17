
%graphic example for d-heaps;
%it illustrates basic functions for  d-heaps  
%  Svetlana Gagarinova  (c) 2005,2006

function dheap_example_graphics()
ar=[1 2 3 4 5 6 7 8 9 10];
n=10;
d=2;
pn=1;px=3;
figure('Resize','off','NumberTitle','off','Name','dheap_example_graphics');
axis('manual');
axis('off');
hold on;
x=0;y=1;dx=0.05;
text(x,y,'We have array:');
for i=1:n
  text(x+0.21,y,num2str(ar(i)),'BackgroundColor',[0 1 0]);
  x=x+dx;
 end;
text(0,0.9,'We can bulid d-heap using function dh=dheap\_arrtoheap(ar,d)');
text(0.5,0.85,'ar - our array');
pause(pn);

%Transform array to heap;d=2 for this heap (here binary heap)
dh=dheap_arrtoheap(ar,d);

%clf;
hold on;
%axis off;
text(0.1,0.8,'RESULT:');
a=zeros(1);
for i=2:n
    a(1,i)=floor(i/d);
end;    
treeplot(a);
[x,y]=treelayout(a);
xy=zeros(1);
for i=1:n
  xy(i,1)=x(i);
  xy(i,2)=y(i);
end;  
treelabel(xy,dh.prior.data,dh.data.data);
pause(px); 

clf; 
hold on;
axis off;
text(-0.1,1,'We can find element with minimal priority using function mf=dheap\_findminprior(dh)');
text(0.5,0.95,'dh - our heap, mf - minimal priority ');
treeplot(a);
[x,y]=treelayout(a);
for i=1:n
  xy(i,1)=x(i);
  xy(i,2)=y(i);
end;  
treelabel(xy,dh.prior.data,dh.data.data);
pause(pn)

% Search minimal priority 
mf=dheap_findminprior(dh);

text(0.21,0.9,'RESULT');
xy=zeros(1,2);
xy(1,1)=x(1);xy(1,2)=y(1);
treelabel(xy,dh.prior.data(1),dh.data.data(1),'Background',[1 0 0]);
pause(px); 

clf; 
hold on;
axis off;
text(-0.1,1,'We can delete element with minimal priority using function dh=dheap\_delminprior(dh)');
text(0.5,0.95,'dh - our heap');
treeplot(a);
[x,y]=treelayout(a);
for i=1:n
  xy(i,1)=x(i);
  xy(i,2)=y(i);
end;  
treelabel(xy,dh.prior.data,dh.data.data);
pause(pn)

%Delete minimal priority
dh=dheap_delminprior(dh);
clf; 
hold on;
axis('off');
text(-0.1,1,'We can delete element with minimal priority using function dh=dheap\_delminprior(dh)');
text(0.5,0.95,'dh - our heap');
text(0.21,0.9,'RESULT');
a=zeros(1,n-1);
a(1,1)=0;
for i=2:(n-1)
    a(1,i)=floor(i/d);
end;    
treeplot(a);
[x,y]=treelayout(a);
xy=zeros(n-1,2);
for i=1:n-1
  xy(i,1)=x(i);
  xy(i,2)=y(i);
end;  
treelabel(xy,dh.prior.data,dh.data.data);
pause(px); 

%Find element with priority 5 and data 5
dh=dheap_find(dh,5,5);
clf; 
hold on;
axis('off');
text(-0.1,1,'We can find element with priority p and data d using function dh=dheap\_find(dh,d,p)');
text(0.21,0.95,'in this example p=5, d=5');
treeplot(a);
treelabel(xy,dh.prior.data,dh.data.data);
pause(pn);
text(0.21,0.9,'RESULT');
xy=zeros(1,2);
num=dh.current;
xy(1,1)=x(num);xy(1,2)=y(num);
treelabel(xy,dh.prior.data(num),dh.data.data(num),'Background',[1 0 0]);
pause(px); 
 
% and change priority of this element(new priority 11)
dh=dheap_diffprior(dh,11);
clf; 
hold on;
axis('off');
text(-0.1,1,'and change priority of this element using function dh=dheap\_diffprior(dh,p)');
text(0.21,0.95,'in this example p=11');
treeplot(a);
[x,y]=treelayout(a);
xy=zeros(n-1,2);
for i=1:n-1
  xy(i,1)=x(i);
  xy(i,2)=y(i);
end;  
treelabel(xy,dh.prior.data,dh.data.data);
pause(pn);

clf; 
hold on;
axis('off');
text(-0.1,1,'and change priority of this element using function dh=dheap\_diffprior(dh,p)');
text(0.21,0.95,'in this example p=11');
treeplot(a);
text(0.21,0.9,'RESULT');
a=zeros(1,n-1);
a(1,1)=0;
for i=2:(n-1)
    a(1,i)=floor(i/d);
end;    
treeplot(a);
[x,y]=treelayout(a);
xy=zeros(n-1,2);
for i=1:n-1
  xy(i,1)=x(i);
  xy(i,2)=y(i);
end;  
treelabel(xy,dh.prior.data,dh.data.data);
pause(px); 

% input new element with data 7 and priority 5
dh=dheap_insert(dh,7,5);

clf; 
hold on;
axis('off');
text(-0.1,1,'We can insert new element with priority p abd data d using function dh=dheap\_insert(dh,d,p)');
text(0.21,0.95,'in this example d=7,p=5');
treeplot(a);
treelabel(xy,dh.prior.data,dh.data.data);
pause(pn);

clf; 
hold on;
axis('off');
text(-0.1,1,'We can insert new element with priority p abd data d using function dh=dheap\_insert(dh,d,p)');
text(0.21,0.95,'in this example d=7,p=5');
text(0.21,0.9,'RESULT');
a=zeros(1,n);
for i=2:(n)
    a(1,i)=floor(i/d);
end;    
treeplot(a);
[x,y]=treelayout(a);
for i=1:n
  xy(i,1)=x(i);
  xy(i,2)=y(i);
end;  
treelabel(xy,dh.prior.data,dh.data.data);
pause(px); 

%Current size of heap
s=dheap_size(dh);
clf; 
hold on;
axis('off');
text(-0.1,1,'We can see size of heap in this moment using function s=dheap\_size(dh)');
text(0.21,0.95,'in this example s=');
treeplot(a);
treelabel(xy,dh.prior.data,dh.data.data);
pause(pn);
text(0.45,0.95,num2str(s),'BackgroundColor',[0 1 0]);



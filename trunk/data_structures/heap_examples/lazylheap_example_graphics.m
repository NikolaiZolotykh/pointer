
%graphic example for left-hand heaps;
%it illustrates basic functions for  left-hand heaps  
%  Svetlana Gagarinova  (c) 2005,2006

function Lazylheap_example_graphics()
ar=[1 2 3 4 5 6 7 8];
n=8;
d=2;
% pauses
pn=2;px=4; 
figure('Resize','off','NumberTitle','off','Name','lheap_example_graphics');
axis('manual');
axis('off');
hold on;
x=0;y=1;dx=0.05;
text(x,y,'We have array:');
for i=1:n
  text(x+0.21,y,num2str(ar(i)),'BackgroundColor',[0 1 0]);
  x=x+dx;
 end;
text(0,0.95,'We can bulid lazy left hand heap using function lh=lazylheap\_arrtoheap(ar,n)');
text(0.5,0.9,'ar - our array, n - length of array');
pause(pn);

%Transform array to heap; 10-size,2-d for heap (here binary heap)
lh=lazylheap_arrtoheap(ar,n);

%clf;
hold on;
%axis off;
text(0.1,0.8,'RESULT:');
[a b c]=TreeToVect(lh); 
treeplot(a);
x=zeros(1);xy=zeros(1);
[x,y]=treelayout(a);
for i=1:size(x,2);
  xy(i,1)=x(i);
  xy(i,2)=y(i);
end;  
treelabel(xy,b,c);
pause(px); 

clf; 
hold on;
axis off;
text(-0.1,1,'We can find element with minimal priority using function [mf,lh]=lazylheap\_findminprior(lh)');
text(0.5,0.95,'lh - our heap, mf - minimal priority ');
treeplot(a);
[x,y]=treelayout(a);
for i=1:size(x,2)
  xy(i,1)=x(i);
  xy(i,2)=y(i);
end;  
treelabel(xy,b,c);
pause(pn)

% Search minimal priority 
[mf,lh]=lazylheap_findminprior(lh);

clf; 
hold on;
axis off;
text(-0.1,1,'We can find element with minimal priority using function [mf,lh]=lazylheap\_findminprior(lh)');
text(0.5,0.95,'lh - our heap, mf - minimal priority ');
text(0.21,0.9,'RESULT');
[a b c]=TreeToVect(lh);
treeplot(a);
x=zeros(1);xy=zeros(1);
[x,y]=treelayout(a);
for i=1:size(x,2)
  xy(i,1)=x(i);
  xy(i,2)=y(i);
end;  
treelabel(xy,b,c);
xy=zeros(1);
xy(1,1)=x(1);xy(1,2)=y(1);
treelabel(xy,b(1,1),c(1,1),'Background',[1 0 0]);
pause(px); 

clf; 
hold on;
axis off;
text(-0.1,1,'We can delete element with minimal priority using function lh=lazylheap\_delminprior(lh)');
text(0.5,0.95,'lh - our heap');
treeplot(a);
[x,y]=treelayout(a);
for i=1:n
  xy(i,1)=x(i);
  xy(i,2)=y(i);
end;  
treelabel(xy,b,c);
pause(pn)

%Delete minimal priority
lh=lheap_delminprior(lh);
clf; 
hold on;
axis('off');
text(-0.1,1,'We can delete element with minimal priority using function lh=lheap\_delminprior(lh)');
text(0.5,0.95,'lh - our heap');
text(0.21,0.9,'RESULT');
[a b c]= TreeToVect(lh);    
treeplot(a);
x=zeros(1);
[x,y]=treelayout(a);
xy=zeros(1);
for i=1:size(x,2)
  xy(i,1)=x(i);
  xy(i,2)=y(i);
end;  
treelabel(xy,b,c);
pause(px); 

%Find element with priority 5 and data 5
lh=lazylheap_find(lh,5,5);
clf; 
hold on;
axis('off');
text(-0.1,1,'We can find element with priority p and data d using function lh=lazylheap\_find(lh,d,p)');
text(0.21,0.95,'in this example p=5, d=5');
treeplot(a);
treelabel(xy,b,c);
pause(pn);
text(0.21,0.9,'RESULT');
xy=zeros(1,2);
num=CurInTreeToNum(lh);
xy(1,1)=x(num);xy(1,2)=y(num);
treelabel(xy,b(1,num),c(1,num),'Background',[1 0 0]);
pause(px); 
 
% and change priority of this element(new priority 11)
lh=lazylheap_diffprior(lh,11);
clf; 
hold on;
axis('off');
text(-0.1,1,'and change priority of this element using function lh=lazylheap\_diffprior(lh,p)');
text(0.21,0.95,'in this example p=11');
treeplot(a);
x=zeros(1);
[x,y]=treelayout(a);
xy=zeros(1);
for i=1:size(x,2)
  xy(i,1)=x(i);
  xy(i,2)=y(i);
end;  
treelabel(xy,b,c);
pause(pn);

clf; 
hold on;
axis('off');
text(-0.1,1,'and change priority of this element using function lh=lazylheap\_diffprior(lh,p)');
text(0.21,0.95,'in this example p=11');
text(0.21,0.9,'RESULT');
a=zeros(1);
[a b c]=TreeToVect(lh);
treeplot(a);
x=zeros(1);
[x,y]=treelayout(a);
xy=zeros(1);
for i=1:size(x,2)
  xy(i,1)=x(i);
  xy(i,2)=y(i);
end;  
treelabel(xy,b,c);
pause(px); 

% input new element with data 7 and priority 5
lh=lazylheap_insert(lh,7,5);

clf; 
hold on;
axis('off');
text(-0.1,1,'We can insert new element with priority p and data d using function lh=lazylheap\_insert(lh,d,p)');
text(0.21,0.95,'in this example d=7,p=5');
treeplot(a);
treelabel(xy,b,c);
pause(pn);

clf; 
hold on;
axis('off');
text(-0.1,1,'We can insert new element with priority p and data d using function lh=lazylheap\_insert(lh,d,p)');
text(0.21,0.95,'in this example d=7,p=5');
text(0.21,0.9,'RESULT');
[a b c]=TreeToVect(lh);
treeplot(a);
x=zeros(1);
[x,y]=treelayout(a);
for i=1:size(x,2)
  xy(i,1)=x(i);
  xy(i,2)=y(i);
end;  
treelabel(xy,b,c);
pause(px); 

%Current size of heap
s=dheap_size(lh);
clf; 
hold on;
axis('off');
text(-0.1,1,'We can see size of heap in this moment using function s=lazylheap\_size(lh)');
text(0.21,0.95,'in this example s=');
treeplot(a);
treelabel(xy,b,c);
pause(pn);
text(0.45,0.95,num2str(s),'BackgroundColor',[0 1 0]);
pause(px);

%Merge 2 heaps
ar2=[12 13 14];
lh1=lazylheap_arrtoheap(ar2,3);

clf; 
hold on;
axis('off');
text(-0.1,1,'We can merge two heaps lh and lh1 using function lh=lazylheap\_merge(lh,lh1)');
text(0.21,0.95,'in this example lh - our heap from previews examples,');
treeplot(a);
treelabel(xy,b,c);
pause(pn);

clf; 
hold on;
axis('off');
text(-0.1,1,'We can merge two heaps lh and lh1 using function lh=lazylheap\_merge(lh,lh1)');
text(0.21,0.95,'lh1 - lazy left heap with elements 12,13,14');
[a b c]=TreeToVect(lh1);
treeplot(a);
xy=zeros(1);
x=zeros(1);
[x,y]=treelayout(a);
for i=1:size(x,2)
  xy(i,1)=x(i);
  xy(i,2)=y(i);
end;  
treelabel(xy,b,c);
pause(pn); 

[lh lh1]=lazylheap_merge(lh,lh1);

clf; 
hold on;
axis('off');
text(-0.1,1,'We can merge two heaps lh and lh1 using function lh=lazylheap\_merge(lh,lh1)');
text(0.21,0.9,'RESULT');
[a b c]=TreeToVect(lh);
treeplot(a);
x=zeros(1);
[x,y]=treelayout(a);
for i=1: size(x,2)
  xy(i,1)=x(i);
  xy(i,2)=y(i);
end;  
treelabel(xy,b,c);
pause(px); 

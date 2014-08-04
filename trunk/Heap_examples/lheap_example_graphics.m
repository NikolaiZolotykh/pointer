ar=[1 2 3 4 5 6 7 8 9 10];
n=10;
d=2;
pn=2;px=4;
figure('Resize','off');
axis('manual');
axis('off');
hold on;
x=0;y=1;dx=0.05;
text(x,y,'We have array:');
for i=1:n
  text(x+0.21,y,num2str(ar(i)),'BackgroundColor',[0 1 0]);
  x=x+dx;
 end;
text(0,0.95,'We can bulid left hand heap using function lh=lheap\_arrtoheap(ar,n)');
text(0.5,0.9,'ar - our array, n - length of array');
pause(pn);

%Transform array to heap; 10-size,2-d for heap (here binary heap)
lh=lheap_arrtoheap(ar,n);

%clf;
hold on;
%axis off;
text(0.1,0.8,'RESULT:');
bt.tree=lh.tree;
[a b c]=lheap_TreeToVect(bt); 
treeplot(a);
[x,y]=treelayout(a);
xy=zeros(1);
for i=1:n
  xy(i,1)=x(i);
  xy(i,2)=y(i);
end;  
treelabel(xy,b,c);
pause(px); 

clf; 
hold on;
axis off;
text(-0.1,1,'We can find element with minimal priority using function mf=lheap\_findminprior(lh)');
text(0.5,0.95,'lh - our heap, mf - minimal priority ');
treeplot(a);
[x,y]=treelayout(a);
for i=1:n
  xy(i,1)=x(i);
  xy(i,2)=y(i);
end;  
treelabel(xy,b,c);
pause(pn)

% Search minimal priority 
mf=lheap_findminprior(lh);

text(0.21,0.9,'RESULT');
xy=zeros(1,2);
xy(1,1)=x(1);xy(1,2)=y(1);
treelabel(xy,b(1,1),c(1,1),'Background',[1 0 0]);
pause(px); 

clf; 
hold on;
axis off;
text(-0.1,1,'We can delete element with minimal priority using function lh=lheap\_delminprior(lh)');
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
a=zeros(1,n-1);
[a b c]= lheap_TreeToVect(lh);    
treeplot(a);
[x,y]=treelayout(a);
xy=zeros(n-1,2);
for i=1:n-1
  xy(i,1)=x(i);
  xy(i,2)=y(i);
end;  
treelabel(xy,b,c);
pause(px); 

%Find element with priority 5 and data 5
lh=lheap_find(lh,5,5);
clf; 
hold on;
axis('off');
text(-0.1,1,'We can find element with priority p and data d using function lh=lheap\_find(lh,d,p)');
text(0.21,0.95,'in this example p=5, d=5');
treeplot(a);
treelabel(xy,b,c);
pause(pn);
text(0.21,0.9,'RESULT');
xy=zeros(1,2);
num=lheap_CurInTreeToNum(lh);
xy(1,1)=x(num);xy(1,2)=y(num);
treelabel(xy,b(1,num),c(1,num),'Background',[1 0 0]);
pause(px); 
 
% and change priority of this element(new priority 11)
lh=lheap_decprior(lh,4);
clf; 
hold on;
axis('off');
text(-0.1,1,'and decrease priority of this element using function lh=lheap\_decprior(lh,p)');
text(0.21,0.95,'in this example p=4');
treeplot(a);
[x,y]=treelayout(a);
xy=zeros(n-1,2);
for i=1:n-1
  xy(i,1)=x(i);
  xy(i,2)=y(i);
end;  
treelabel(xy,b,c);
pause(pn);

clf; 
hold on;
axis('off');
text(-0.1,1,'and change priority of this element using function lh=lheap\_decprior(lh,p)');
text(0.21,0.95,'in this example p=4');
text(0.21,0.9,'RESULT');
a=zeros(1,n-1);
[a b c]=lheap_TreeToVect(lh);
treeplot(a);
[x,y]=treelayout(a);
xy=zeros(n-1,2);
for i=1:n-1
  xy(i,1)=x(i);
  xy(i,2)=y(i);
end;  
treelabel(xy,b,c);
pause(px); 

% input new element with data 7 and priority 5
lh=lheap_insert(lh,7,5);

clf; 
hold on;
axis('off');
text(-0.1,1,'We can insert new element with priority p and data d using function lh=lheap\_insert(lh,d,p)');
text(0.21,0.95,'in this example d=7,p=5');
treeplot(a);
treelabel(xy,b,c);
pause(pn);

clf; 
hold on;
axis('off');
text(-0.1,1,'We can insert new element with priority p and data d using function lh=lheap\_insert(lh,d,p)');
text(0.21,0.95,'in this example d=7,p=5');
text(0.21,0.9,'RESULT');
[a b c]=lheap_TreeToVect(lh);
treeplot(a);
[x,y]=treelayout(a);
for i=1:n
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
text(-0.1,1,'We can see size of heap in this moment using function s=lheap\_size(lh)');
text(0.21,0.95,'in this example s=');
treeplot(a);
treelabel(xy,b,c);
pause(pn);
text(0.45,0.95,num2str(s),'BackgroundColor',[0 1 0]);
pause(px);

%Merge 2 heaps
ar2=[12 13 14 15 16]
lh1=lheap_arrtoheap(ar2,5);

clf; 
hold on;
axis('off');
text(-0.1,1,'We can merge two heaps lh and lh1 using function lh=lheap\_merge(lh,lh1)');
text(0.21,0.95,'in this example lh - our heap from previews examples,');
treeplot(a);
treelabel(xy,b,c);
pause(pn);

clf; 
hold on;
axis('off');
text(-0.1,1,'We can merge two heaps lh and lh1 using function lh=lheap\_merge(lh,lh1)');
text(0.21,0.95,'lh1 - heap with elements 12,13,14,15,16');
a=zeros(5,1);
b=zeros(5,1);
c=zeros(5,1);
[a b c]=lheap_TreeToVect(lh1);
treeplot(a);
xy=zeros(5,2);
[x,y]=treelayout(a);
for i=1:5
  xy(i,1)=x(i);
  xy(i,2)=y(i);
end;  
treelabel(xy,b,c);
pause(pn); 

[lh lh1]=lheap_merge(lh,lh1);

clf; 
hold on;
axis('off');
text(-0.1,1,'We can merge two heaps lh and lh1 using function lh=lheap\_merge(lh,lh1)');
text(0.21,0.9,'RESULT');
[a b c]=lheap_TreeToVect(lh);
treeplot(a);
[x,y]=treelayout(a);
for i=1:(n+5)
  xy(i,1)=x(i);
  xy(i,2)=y(i);
end;  
treelabel(xy,b,c);
pause(px); 

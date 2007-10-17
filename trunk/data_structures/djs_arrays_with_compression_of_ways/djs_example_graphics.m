pn=1;px=3;
figure('Resize','off');
axis('manual');
axis('off');
hold on;
x=0;y=1;dx=0.05;
text(x,y,'We have set:');
pause(pn);

d=djs_new;
d=djs_create(d,1);
d=djs_create(d,2);
d=djs_put(d,3,1);
d=djs_put(d,5,1);
d=djs_put(d,10,2);
d=djs_join(d,2,1);

hold on;
axis off;
a=zeros(1,5);
a(1,1)=0;
a(1,2)=1;
for i=3:5
    a(1,i)=floor(i/2.5);
end;    
treeplot(a);
[x,y]=treelayout(a);
for i=1:5
  xy(i,1)=x(i);
  xy(i,2)=y(i);
end;  
treelabel(xy,d.data);
pause(pn); 

% create element
text(0,0.9,'We can create new subset using function djs=djs\_create(djs,elem)');
text(0.3,0.85,'djs - our set, elem - element which define name of subset');
text(0.3,0.8,'in this example elem=4');
pause;
clf;
hold on;
axis off;
text(0,1,'We have set:');
text(0,0.9,'We can create new subset using function djs=djs\_create(djs,elem)');
text(0.3,0.85,'djs - our set, elem - element which define name of subset');
text(0.3,0.8,'in this example elem=4');
text(0,0.75,'RESULT:');
d=djs_create(d,4);
b=zeros(1,6);
for i=1:3
    b(1,i)=a(1,i);
end
for i=4:6
    b(1,i)=a(1,i-1);
end
b(1,4)=0;
treeplot(b);
[x,y]=treelayout(b);
for i=1:6
  xy(i,1)=x(i);
  xy(i,2)=y(i);
end;  
treelabel(xy,d.data);
pause; 

% insert element
text(0,0.9,'We can create new subset using function djs=djs\_create(djs,elem)','Color',[0.8 0.8 0.8]);
text(0.3,0.85,'djs - our set, elem - element which define name of subset','Color',[0.8 0.8 0.8]);
text(0,0.75,'RESULT:','Color',[0.8 0.8 0.8]);
text(0.3,0.8,'in this example elem=4','Color',[0.8 0.8 0.8]);
text(0,0.9,'We can add element using function djs=djs\_put(djs,elem,name)');
text(0,0.85,'djs - our set, elem - element, name - name of subset where element is contain');
text(0,0.8,'in this example elem=11, name=4');
pause;
clf;
hold on;
axis off;
text(0,1,'We have set:');
text(0,0.9,'We can add element using function djs=djs\_put(djs,elem,name)');
text(0,0.85,'djs - our set, elem - element, name - name of subset where element is contain');
text(0,0.8,'in this example elem=11, name=4');
text(0,0.75,'RESULT:');
b(1,7)=4;
treeplot(b);
d=djs_put(d,11,4);
[x,y]=treelayout(b);
for i=1:7
  xy(i,1)=x(i);
  xy(i,2)=y(i);
end;  
treelabel(xy,d.data);
pause; 

% get number of subsets
text(0,0.9,'We can add element using function djs=djs\_put(djs,elem,name)','Color',[0.8 0.8 0.8]);
text(0,0.85,'djs - our set, elem - element, name - name of subset where element is contain','Color',[0.8 0.8 0.8]);
text(0,0.75,'RESULT:','Color',[0.8 0.8 0.8]);
text(0,0.8,'in this example elem=11, name=4','Color',[0.8 0.8 0.8]);
text(0,0.9,'We can get number of subsets using function count=djs\_getcount(djs)');
text(0,0.85,'djs - our set');
pause;
count=djs_getcount(d);
text(0.21,0,'RESULT: count =');
text(0.5,0,num2str(count));
pause;

% join subsets
text(0,0.9,'We can get number of subsets using function count=djs\_getcount(djs) ','Color',[0.8 0.8 0.8]);
text(0,0.85,'djs - our set','Color',[0.8 0.8 0.8]);
text(0.21,0,'RESULT: count =','Color',[0.8 0.8 0.8]);
text(0.5,0,num2str(count),'Color',[0.8 0.8 0.8]);
text(0,0.9,'We can unite two subsets using function djs=djs\_join(djs,name1,name2)');
text(0,0.85,'djs - our set, name1 - name of first subset, name - name of second subset');
text(0,0.8,'in this example name1=1, name2=4');
pause;
clf;
hold on;
axis off;
text(0,1,'We have set:');
text(0,0.9,'We can unite two subsets using function djs=djs\_join(djs,name1,name2)');
text(0,0.85,'djs - our set, name1 - name of first subset, name - name of second subset');
text(0,0.8,'in this example name1=1, name2=4');
text(0,0.75,'RESULT:');
b(1,4)=1;
treeplot(b);
d=djs_join(d,1,4);
[x,y]=treelayout(b);
for i=1:7
  xy(i,1)=x(i);
  xy(i,2)=y(i);
end;  
treelabel(xy,d.data);
pause;

% find element
text(0,0.9,'We can unite two subsets using function djs=djs\_join(djs,name1,name2)','Color',[0.8 0.8 0.8]);
text(0,0.85,'djs - our set, name1 - name of first subset, name - name of second subset','Color',[0.8 0.8 0.8]);
text(0,0.75,'RESULT:','Color',[0.8 0.8 0.8]);
text(0,0.8,'in this example name1=1, name2=4','Color',[0.8 0.8 0.8]);
text(-0.1,0.95,'We can find name of subset that contains element using function [n,djs]=djs\_find(djs,elem)');
text(0,0.9,'djs - our set, n - name of subset, elem - element');
text(0,0.85,'(This function performs search with compression of ways)');
text(0.21,0.8,'in this example element=10');
text(xy(6,1)+0.02,xy(6,2),'10','Background',[1 1 0]);
pause;
clf;
hold on;
axis off;
text(0,1,'We have set:');
text(-0.1,0.95,'We can find name of subset that contains element using function [n,djs]=djs\_find(djs,elem)');
text(0,0.9,'djs - our set, n - name of subset, elem - element');
text(0,0.85,'(This function performs search with compression of ways)');
text(0.21,0.8,'in this example element=10');
text(0,0.75,'RESULT:');
b=zeros(1,7);
b(1,1)=0;
for i=2:6
    b(1,i)=1;
end
b(1,7)=4;
treeplot(b);
[n,d]=djs_find(d,10);
[x,y]=treelayout(b);
for i=1:7
  xy(i,1)=x(i);
  xy(i,2)=y(i);
end; 
treelabel(xy,d.data);
text(0.38,0,'name =');
text(0.5,0,num2str(n));
pause(px);
d=djs_free(d);
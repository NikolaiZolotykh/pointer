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
d=djs_create(d,4);
d=djs_put(d,2,1);
d=djs_put(d,3,1);
d=djs_put(d,5,1);
d=djs_put(d,8,1);
d=djs_put(d,9,4);

hold on;
axis off;
a=zeros(1,7);
a(1,1)=0;
a(1,4)=0;
for i=2:3
    a(1,i)=floor(i/2);
end;   
a(1,5)=1;
a(1,6)=1;
a(1,7)=4;
treeplot(a);
[x,y]=treelayout(a);
for i=1:7
  xy(i,1)=x(i);
  xy(i,2)=y(i);
end;  
treelabel(xy,d);
pause(pn); 


% create element
text(0,0.9,'We can create new subset using function djs=djs\_create(djs,elem)');
text(0,0.85,'djs - our set, elem - element which define name of subset');
text(0,0.8,'in this example elem=6');
pause;
clf;
hold on;
axis off;
text(0,1,'We have set:');
text(0,0.9,'We can create new subset using function djs=djs\_create(djs,elem)');
text(0,0.85,'djs - our set, elem - element which define name of subset');
text(0,0.8,'in this example elem=6');
text(0,0.75,'RESULT:');
d=djs_create(d,6);
b=zeros(1,8);
for i=1:5
    b(1,i)=a(1,i);
end
for i=6:8
    b(1,i)=a(1,i-1);
end
b(1,6)=0;
treeplot(b);
[x,y]=treelayout(b);
for i=1:8
  xy(i,1)=x(i);
  xy(i,2)=y(i);
end;  
treelabel(xy,d);
pause; 

% insert element
text(0,0.9,'We can create new subset using function djs=djs\_create(djs,elem)','Color',[0.8 0.8 0.8]);
text(0,0.85,'djs - our set, elem - element which define name of subset','Color',[0.8 0.8 0.8]);
text(0,0.75,'RESULT:','Color',[0.8 0.8 0.8]);
text(0,0.8,'in this example elem=6','Color',[0.8 0.8 0.8]);
text(0,0.9,'We can add element using function djs=djs\_put(djs,elem,name)');
text(0,0.85,'djs - our set, elem - element, name - name of subset where element is contain');
text(0,0.8,'in this example elem=10, name=6');
pause;
clf;
hold on;
axis off;
text(0,1,'We have set:');
text(0,0.9,'We can add element using function djs=djs\_put(djs,elem,name)');
text(0,0.85,'djs - our set, elem - element, name - name of subset where element is contain');
text(0,0.8,'in this example elem=10, name=6');
text(0,0.75,'RESULT:');
b(1,9)=6;
treeplot(b);
d=djs_put(d,10,6);
[x,y]=treelayout(b);
for i=1:9
  xy(i,1)=x(i);
  xy(i,2)=y(i);
end;  
treelabel(xy,d);
pause; 

% get number of subsets
text(0,0.9,'We can add element using function djs=djs\_put(djs,elem,name)','Color',[0.8 0.8 0.8]);
text(0,0.85,'djs - our set, elem - element, name - name of subset where element is contain','Color',[0.8 0.8 0.8]);
text(0,0.75,'RESULT:','Color',[0.8 0.8 0.8]);
text(0,0.8,'in this example elem=10, name=6','Color',[0.8 0.8 0.8]);
text(0,0.9,'We can get number of subsets using function count=djs\_getcount(djs)');
text(0,0.85,'djs - our set');
pause;
count=djs_getcount(d);
text(0.21,0,'RESULT: count =');
text(0.5,0,num2str(count));
pause;

% get size of subset
text(0,0.9,'We can get number of subsets using function count=djs\_getcount(djs)','Color',[0.8 0.8 0.8]);
text(0,0.85,'djs - our set','Color',[0.8 0.8 0.8]);
text(0.21,0,'RESULT: count =','Color',[0.8 0.8 0.8]);
text(0.5,0,num2str(count),'Color',[0.8 0.8 0.8]);
text(0,0.9,'We can get size of subset using function size=djs\_getsizesubset(djs,ss)');
text(0,0.85,'djs - our set, ss - name of subset');
text(0,0.8,'in this example ss=1');
pause;
size=djs_getsizesubset(d,1);
text(0.21,0,'RESULT: size =');
text(0.5,0,num2str(size));
pause;

% delete element
text(0,0.9,'We can get size of subset using function size=djs\_getsizesubset(djs,ss)','Color',[0.8 0.8 0.8]);
text(0,0.85,'djs - our set, ss - name of subset','Color',[0.8 0.8 0.8]);
text(0.21,0,'RESULT: size =','Color',[0.8 0.8 0.8]);
text(0.5,0,num2str(size),'Color',[0.8 0.8 0.8]);
text(0,0.8,'in this example ss=1','Color',[0.8 0.8 0.8]);
text(0,0.9,'We can delete element using function djs=djs\_delete\_element(djs,elem)');
text(0,0.85,'djs - our set, elem - element');
text(0,0.8,'in this example elem=8');
pause;
clf;
hold on;
axis off;
text(0,1,'We have set:');
text(0,0.9,'We can delete element using function djs=djs\_delete\_element(djs,elem)');
text(0,0.85,'djs - our set, elem - element');
text(0,0.8,'in this example elem=8');
text(0,0.75,'RESULT:');
c=zeros(1,8);
for i=1:6
    c(1,i)=b(1,i);
end
for i=7:8
    c(1,i)=b(1,i+1);
end
treeplot(c);
d=djs_delete_element(d,8);
[x,y]=treelayout(c);
for i=1:8
  xy(i,1)=x(i);
  xy(i,2)=y(i);
end;  
treelabel(xy,d);
pause;

% find element
text(0,0.9,'We can delete element using function djs=djs\_delete\_element(djs,elem)','Color',[0.8 0.8 0.8]);
text(0,0.85,'djs - our set, elem - element','Color',[0.8 0.8 0.8]);
text(0,0.8,'in this example elem=8','Color',[0.8 0.8 0.8]);
text(0,0.75,'RESULT:','Color',[0.8 0.8 0.8]);
text(-0.1,0.9,'We can find name of subset that contains element using function name=djs\_find(djs,elem)');
text(0,0.85,'djs - our set, elem - element');
text(0,0.8,'in this example element=9');
text(xy(7,1)+0.02,xy(7,2),'9','Background',[1 1 0]);
pause;
n=djs_find(d,9);
text(0.21,0,'RESULT: name =');
text(0.5,0,num2str(n));
pause;

% join subsets
text(-0.1,0.9,'We can find name of subset that contains element using function name=djs\_find(djs,elem)','Color',[0.8 0.8 0.8]);
text(0,0.85,'djs - our set, elem - element','Color',[0.8 0.8 0.8]);
text(0,0.8,'in this example element=9','Color',[0.8 0.8 0.8]);
text(xy(7,1)+0.02,xy(7,2),'9','Background',[0.8 0.8 0.8]);
text(0.21,0,'RESULT: name =','Color',[0.8 0.8 0.8]);
text(0.5,0,num2str(n),'Color',[0.8 0.8 0.8]);
text(0,0.9,'We can unite two subsets using function djs=djs\_join(djs,name1,name2)');
text(0,0.85,'djs - our set, name1 - name of first subset, name - name of second subset');
text(0,0.8,'in this example name1=4, name2=1');
pause;
clf;
hold on;
axis off;
text(0,1,'We have set:');
text(0,0.9,'We can unite two subsets using function djs=djs\_join(djs,name1,name2)');
text(0,0.85,'djs - our set, name1 - name of first subset, name - name of second subset');
text(0,0.8,'in this example name1=4, name2=1');
text(0,0.75,'RESULT:');
c(1,4)=1;
c(1,7)=1;
treeplot(c);
d=djs_join(d,4,1);
[x,y]=treelayout(c);
for i=1:8
  xy(i,1)=x(i);
  xy(i,2)=y(i);
end;  
treelabel(xy,d);
pause(px);
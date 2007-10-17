% illustrates basic functions for stack 
% determines string is palindrom or not
% Svetlana Gagarinova (c) 2006
function st_demo(string,len)
if (nargin<2)||(~ischar(string))||(isinteger(len))
    disp('You dont input data or data is wrong');
    string='madam im adam';
    len=13; 
end;
figure('Resize','off');
axis([-0.1 1.05 -0.1 1.05]);
axis manual;
axis off;
hold on;
x0=0;y0=1.05;
x=0;y=1;
text(x0,y0,'string :');
%,'Backgroundcolor',[1 0 1]);
hold on;
s=st_new;
dy=1/len; y=y-dy*len-0.05;
for i=1:len
 text(x0+8*0.02+0.03*(i-1),y0,string(i));
 if string(i)~=' '    
  s=st_push(s,string(i));
  rectangle('Position',[x y 0.06 dy],'FaceColor',[1 1 0],'EdgeColor',[1 0 0])
  text(x+0.06*0.3,y+dy*0.3,string(i));
  y=y+dy;
  pause(1);
 end;
end;
text(x0,y0-0.05,'inverse string :');
j=0;
for i=1:len
 if string(i)~=' '    
    a=st_top(s);
    s=st_pop(s);
    y=y-dy;
    rectangle('Position',[x y 0.06 dy],'FaceColor',[1 1 0],'EdgeColor',[1 0 0],...
        'EraseMode','xor');
  if  a~=string(i)
     disp('not palindrom');
     text(x0+0.02*16+0.03*j,y0-0.05,a,'EdgeColor',[1 0 0]);
     text(x0+0.3,y0-0.55,'NOT PALINDROM','BackgroundColor',[1 0 0]);
      return;
  end;   
   text(x0+0.02*16+0.03*j,y0-0.05,string(i));
   pause(1);
   j=j+1;
 end;
end;
if st_empty(s)
  disp('palindrom');
  text(x0+0.3,y0-0.55,'PALINDROM','BackgroundColor',[0 1 0]);
else
  disp('not palindrom');
  text(x0+0.3,y0-0.55,'NOT PALINDROM','BackgroundColor',[1 0 0]);
end;  
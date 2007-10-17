
% demo for round robbin algorithm
%  Svetlana Gagarinova  (c) 2005,2006

a(1,1)=0;a(1,2)=6;
a(1,3)=1;a(1,4)=5;
a(1,5)=0;a(1,6)=0;

a(2,1)=6;a(2,2)=0;
a(2,3)=5;a(2,4)=0;
a(2,5)=3;a(2,6)=0;

a(3,1)=1;a(3,2)=5;
a(3,3)=0;a(3,4)=5;
a(3,5)=6;a(3,6)=4;

a(4,1)=5;a(4,2)=0;
a(4,3)=5;a(4,4)=0;
a(4,5)=0;a(4,6)=2;

a(5,1)=0;a(5,2)=3;
a(5,3)=6;a(5,4)=0;
a(5,5)=0;a(5,6)=6;

a(6,1)=0;a(6,2)=0;
a(6,3)=4;a(6,4)=2;
a(6,5)=6;a(6,6)=0;

xy=rand(6,2);
if(iscoherent(a))
b=matrix_to_list(a);
s=RoundRobbin(b);
c=list_to_matrix(s,6);
clf
axis('auto');
hold('on');
gplot(a,xy,'o-');
h=graphlabel(xy);
gplot(c,xy,'o-r');
hold('off');
axis('off');
figure(gcf);
else
  disp('error');
end;  

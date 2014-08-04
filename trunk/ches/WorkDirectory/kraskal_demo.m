function kraskal_demo(matrix)

sz1=size(matrix);
sz=sz1(1);

xy=rand(sz,2);

for i=1:sz
    for j=1:sz
        tempmatrix(i,j)=matrix(i,j);
    end
end

djs=djs_new;
for n=1:sz
    djs=djs_create(djs,n);
end

tree=zeros(sz,sz);
count=0;

while (~isequal(tempmatrix,zeros(sz,sz)))&&(count<sz-1)
  min=1000;
  for i=1:sz
    for j=(i+1):sz
      if (tempmatrix(i,j)<min)&&(tempmatrix(i,j)~=0)
          min=tempmatrix(i,j);
          a=i;
          b=j;
      end
    end
  end

  [n1,djs]=djs_find(djs,a);
  [n2,djs]=djs_find(djs,b);
  if n1~=n2
    tree(a,b)=tempmatrix(a,b);
    tree(b,a)=tempmatrix(b,a);
    djs=djs_join(djs,n1,n2);
    count=count+1;
  end
  tempmatrix(a,b)=0;
  tempmatrix(b,a)=0;
  clf
  axis('auto');
  hold('on');
  gplot(matrix,xy,'o-');
  h=graphlabel(xy);
  gplot(tree,xy,'o-r');
  hold('off');
  axis('off');
  figure(gcf);
  pause(1);
end
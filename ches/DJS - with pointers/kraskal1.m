function kraskal1

for n=2:25:300
con=0;
m=600;
d=2*m/(n*n-n);
while con~=1
  matrix1=sprandsym(n,d);
  matrix=floor(10*matrix1);
  con=isconnected(matrix,n);
end

%m=0;
%for i=1:n-1
%    for j=i+1:n
%        if (matrix(i,j)~=0)||(matrix(j,i)~=0)
%            m=m+1;
%        end  
%    end      
%end

for i=1:n
    for j=1:n
        tempmatrix(i,j)=matrix(i,j);
    end
end

djs=djs_new;
for k=1:n
    djs=djs_create(djs,k);
end

tree=zeros(n,n);
count=0;
t=0;

while (~isequal(tempmatrix,zeros(n,n)))&&(count<n-1)
  min=1000;
  for i=1:n
    for j=(i+1):n
      if (tempmatrix(i,j)<min)&&(tempmatrix(i,j)~=0)
          min=tempmatrix(i,j);
          a=i;
          b=j;
      end
    end
  end
  
  tic;
  djs=djs_find(djs,a);
  djs=djs_find(djs,b);
  n1=djs_find1(djs,a);
  n2=djs_find1(djs,b);
  if n1~=n2
    tree(a,b)=tempmatrix(a,b);
    tree(b,a)=tempmatrix(b,a);
    djs=djs_join(djs,n1,n2);
    count=count+1;
  end
  tempmatrix(a,b)=0;
  tempmatrix(b,a)=0;
  t=t+toc;
end

time(n)=t;
end
n=2:25:300;
y=time(n);
plot(n,y)
%for i=1:n
%    for j=1:m
      %    plot3(n,m,time(n,m))
      % axis square;
      %grid on
%      end
%end

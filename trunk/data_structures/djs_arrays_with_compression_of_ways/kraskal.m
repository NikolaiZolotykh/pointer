function kraskal

for n=2:10:100
m=200;    
con=0;
d=2*m/(n*n-n);
while con~=1
  matrix1=sprandsym(n,d);
  matrix=floor(10*matrix1);
  con=isconnected(matrix,n);
end

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
tic;
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
end
    t=toc;
time(n)=t;
   end
n=2:10:100;
y=time(n);
plot(n,y)
a=malloc;
tic;
for i=1:10000;
    b=malloc;
    b.next=a;
    b.data=rand(1);
    a=b;
end;
toc,
b=a.next;
while b~= 0, 
    free(a);
    a=b;
end
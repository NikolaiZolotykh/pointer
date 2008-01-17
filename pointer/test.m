pointers a b;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

disp('Test 1')

a.data = zeros(1000);
a.data(1, 1) = 1;

if a.data(1, 1) == 1 && a.data(1000, 1000) == 0
  disp('Ok')
else
  disp('error')
end;

free(a)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

disp('Test 2')

a.data1 = 1;
a.data2.data2 = 2;
a.data3.data3.data3.data3 = 3;
a.data4 = 4;

if a.data1 == 1 && a.data2.data2 == 2 && a.data3.data3.data3.data3 == 3 && a.data4 == 4
  disp('Ok')
else
  disp('error')
end;

free(a)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

disp('Test 3')

a.data.name = 'John';
a.data.age = 22;

b = a;
b.data.name = 'Paul';
a.data.age = 21;

if isequal(a.data.name, 'Paul') && isequal(b.data.age, 21)
  disp('Ok')
end;

free(a)
free(b)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

disp('Test 4')

N = 1000;

disp('Operations with pointers')
tic
a.data = zeros(N);
for i = 1:N
  a.data(i, i) = i;
end;
toc

disp('Equivalent operations with structures')
tic
s.data = zeros(N);
for i = 1:N
  s.data(i, i) = i;
end;
toc

if a.data(N, N) == N
  disp('Ok')
else
  disp('error')
end;

free(a)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

disp('Test 5')

a.sub = malloc;
a.sub.name = 'Name';
if a.sub.name == 'Name'
  disp('Ok')
else
  disp('error')
end;

b = a.sub;
b.name = 'Name2';
if a.sub.name == 'Name2'
  disp('Ok')
else
  disp('error')
end;

disp('Operations with pointers')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

disp('p_demo')

p_demo
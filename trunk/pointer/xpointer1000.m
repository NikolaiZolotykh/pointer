n = 1000;
tic
A = zeros(n);
for i = 1:n
    A(i, i) = i;
end
toc

p = malloc;
tic
p.data = zeros(n);
for i = 1:n
  p.data(i, i) = i;
end
toc
free(p)
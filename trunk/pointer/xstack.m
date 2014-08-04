N = 100000;
 
timearr = zeros(N, 1);
timelst = zeros(N, 1);
 
tic
arr = [];
for n = 1:N
    arr(end + 1) = n;
    timearr(n) = toc;
end
 
tic
lst = malloc;
cur = lst;
for n = 1:N
    cur = malloc;
    cur.data = n;
    cur.next = lst;
    lst = cur;
    timelst(n) = toc;
end
 
plot(1:N, [timearr, timelst])
grid on
legend('array', 'list', 2)
xlabel('n')
ylabel('time, sec')

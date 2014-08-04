function xdlist

% xdlist demonstrates functions with the doubly linked list.

a = dlist;

fid = fopen('xdlist.m', 'r');
while ~feof(fid)
    line = fgetl(fid);
    if isempty(line);
        line = ' ';
    end
    insertback(a, line);
end
fclose(fid);

disp('--------- xdlist.m --------');
disp(a);
disp('---------------------------');

free(a);

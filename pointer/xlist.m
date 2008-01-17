function xlist

% xlist demonstrates functions with the singly linked list.

a = list;

fid = fopen('xlist.m', 'r');
while ~feof(fid)
    line = fgetl(fid);
    if isempty(line);
        line = ' ';
    end
    insertfront(a, line);
end
fclose(fid);

disp('----- reversed xlist.m ----');
disp(a);
disp('---------------------------');

free(a);

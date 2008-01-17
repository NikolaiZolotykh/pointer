 Months = {
    'January', 'February', 'March', 'April', ...
    'May', 'June', 'July', 'August', ...
    'September', 'October', 'November', 'December'};

% ��������� ������ � ������� �������� ������:
bt = bintree;
for i = 1:12
    insert(bt, Months{i}, i);
end
node = findkey(bt, 1); % ����� �������� � ������ 1
node.data = 'January is the first month in a year'; % ������ ������ 
draw(bt); % ������ ������. ��. ���. \ref{treedemo1}
free(bt);
pause;

% ������ ������� ������ � ������ � ��������� �������:
bt = bintree;
rand('state', 0)
p = randperm(12);
for i = 1:12
    insert(bt, Months{p(i)}, p(i));
end
node = findkey(bt, 1);
modify(bt, node, 'Jan');
draw(bt); % ������ ������. ��. ���. \ref{treedemo2}
free(bt);
pause
 
% ��������� ������ � ������-������ ������:
rb = redblacktree;
for i = 1:12
    insert(rb, Months{i}, i);
end
draw(rb); % ������ ������. ��. ���. \ref{treedemo3}

pause;
remove(rb, findkey(rb, 3));
remove(rb, findkey(rb, 8));
draw(rb); % ������ ������. ��. ���. \ref{treedemo4}
pause;

% ��������� ������ � ���-������:
avl = avl_new;
for i = 1:12
    avl = avl_put(avl, Months{i}, i);
end
disp('����� �� ���������� �������:')
avl_inord(avl, 'disp');
 
disp('����� � ������ �������:')
avl_preor(avl, 'disp');
 
disp('����� � �������� �������:')
avl_posto(avl, 'disp');

avl_graph(avl); % ������ ������. ��. ���. \ref{treedemo5}
pause

% ������� ��������� ����:
avl = avl_del(avl, avl_find(avl, 6));
avl = avl_del(avl, avl_find(avl, 7));
avl_graph(avl); % ������ ������. ��. ���. \ref{treedemo6}
pause
avl = avl_del(avl, avl_find(avl, 8));
avl_graph(avl); % ������ ������. ��. ���. \ref{treedemo7}
avl = avl_free(avl);

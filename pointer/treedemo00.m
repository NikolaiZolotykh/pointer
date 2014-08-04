 Months = {
    'January', 'February', 'March', 'April', ...
    'May', 'June', 'July', 'August', ...
    'September', 'October', 'November', 'December'};

% ��������� ������ � ������� �������� ������:
bt = bt_new;
for i = 1:12
    bt = bt_put(bt, Months{i}, i);
end
node = bt_find(bt, 1); % ����� �������� � ������ 1
node.data = 'January is the first month in a year'; % ������ ������ 
bt_graph(bt); % ������ ������. ��. ���. \ref{treedemo1}
bt = bt_free(bt);
pause;

% ������ ������� ������ � ������ � ��������� �������:
bt = bt_new;
rand('state', 0)
p = randperm(12);
for i = 1:12
    bt = bt_put(bt, Months{p(i)}, p(i));
end
node = bt_find(bt, 1);
node.data = 'Jan';
bt_graph(bt); % ������ ������. ��. ���. \ref{treedemo2}
bt = bt_free(bt);
pause
 
% ��������� ������ � ������-������ ������:
rb = rb_new;
for i = 1:12
    rb = rb_put(rb, Months{i}, i);
end
rb_graph(rb); % ������ ������. ��. ���. \ref{treedemo3}
rb = rb_free(rb);
pause;
rb = rb_del(rb, rb_find(rb, 3));
rb = rb_del(rb, rb_find(rb, 8));
rb_graph(rb); % ������ ������. ��. ���. \ref{treedemo4}
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

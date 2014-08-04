Months = {
    'Jan', 'February', 'March', 'April', ...
    'May', 'June', 'July', 'August', ...
    'September', 'October', 'November', 'December'};

tr = avl_new;
 
for i = 1:12
    tr = avl_put(tr, Months{i}, i);
end
 
node = avl_find(tr, 1); % ������ � ������ �� �����
node.data = 'January'; 
 
disp('����� � ������ �������:')
avl_inord(tr, 'disp');
 
disp('����� � �������� �������:')
avl_posto(tr, 'disp');
 
disp('����� � �������� �������:')
avl_preor(tr, 'disp');
 
avl_graph(tr); % ��. ���. \ref{xavl}
tr = avl_free(tr);


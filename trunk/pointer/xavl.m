Months = {
    'Jan', 'February', 'March', 'April', ...
    'May', 'June', 'July', 'August', ...
    'September', 'October', 'November', 'December'};

a = avl;
 
for i = 1:12
    insert(a, Months{i}, i);
end
 
draw(a);

node = findkey(a, 1); % ������ � ������ �� �����
modify(a, node, 'January'); 
 
disp('����� � ������ �������:')
inorder(a, 'disp');
 
disp('����� � �������� �������:')
postorder(a, 'disp');
 
disp('����� � �������� �������:')
preorder(a, 'disp');
 
draw(a); % ��. ���. \ref{xavl}
%free(a);


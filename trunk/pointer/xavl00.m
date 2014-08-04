Months = {
    'Jan', 'February', 'March', 'April', ...
    'May', 'June', 'July', 'August', ...
    'September', 'October', 'November', 'December'};

tr = avl_new;
 
for i = 1:12
    tr = avl_put(tr, Months{i}, i);
end
 
node = avl_find(tr, 1); % Доступ к данным по ключу
node.data = 'January'; 
 
disp('Обход в прямом порядке:')
avl_inord(tr, 'disp');
 
disp('Обход в обратном порядке:')
avl_posto(tr, 'disp');
 
disp('Обход в концевом порядке:')
avl_preor(tr, 'disp');
 
avl_graph(tr); % См. рис. \ref{xavl}
tr = avl_free(tr);


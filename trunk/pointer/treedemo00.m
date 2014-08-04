 Months = {
    'January', 'February', 'March', 'April', ...
    'May', 'June', 'July', 'August', ...
    'September', 'October', 'November', 'December'};

% Размещаем данные в обычном бинарном дереве:
bt = bt_new;
for i = 1:12
    bt = bt_put(bt, Months{i}, i);
end
node = bt_find(bt, 1); % Поиск элемента с ключом 1
node.data = 'January is the first month in a year'; % Меняем данные 
bt_graph(bt); % Рисуем дерево. См. рис. \ref{treedemo1}
bt = bt_free(bt);
pause;

% Теперь запишем данные в дерево в случайном порядке:
bt = bt_new;
rand('state', 0)
p = randperm(12);
for i = 1:12
    bt = bt_put(bt, Months{p(i)}, p(i));
end
node = bt_find(bt, 1);
node.data = 'Jan';
bt_graph(bt); % Рисуем дерево. См. рис. \ref{treedemo2}
bt = bt_free(bt);
pause
 
% Размещаем данные в красно-черном дереве:
rb = rb_new;
for i = 1:12
    rb = rb_put(rb, Months{i}, i);
end
rb_graph(rb); % Рисуем дерево. См. рис. \ref{treedemo3}
rb = rb_free(rb);
pause;
rb = rb_del(rb, rb_find(rb, 3));
rb = rb_del(rb, rb_find(rb, 8));
rb_graph(rb); % Рисуем дерево. См. рис. \ref{treedemo4}
pause;

% Размещаем данные в АВЛ-дереве:
avl = avl_new;
for i = 1:12
    avl = avl_put(avl, Months{i}, i);
end
disp('Обход во внутреннем порядке:')
avl_inord(avl, 'disp');
 
disp('Обход в прямом порядке:')
avl_preor(avl, 'disp');
 
disp('Обход в обратном порядке:')
avl_posto(avl, 'disp');

avl_graph(avl); % Рисуем дерево. См. рис. \ref{treedemo5}
pause

% Удаляем некоторые узлы:
avl = avl_del(avl, avl_find(avl, 6));
avl = avl_del(avl, avl_find(avl, 7));
avl_graph(avl); % Рисуем дерево. См. рис. \ref{treedemo6}
pause
avl = avl_del(avl, avl_find(avl, 8));
avl_graph(avl); % Рисуем дерево. См. рис. \ref{treedemo7}
avl = avl_free(avl);

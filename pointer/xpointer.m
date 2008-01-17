% Массив с данными:
data = {
    'Isaac Newton',
    'Carl F. Gauss', 
    'Evariste Galois', 
    'Blaise Pascal',
    'Georg F. L. Ph. Cantor', 
    'Nikolai I. Lobachevski'};
n = length(data);

% Инициализация элементов списка:
prev = 0;
cur = 0;
for j = 1:n
    cur = malloc;
    cur.data = data{j};
    cur.next = prev;
    prev = cur;
end

% Печать элементов списка:
list = cur;
while (cur ~= 0)
    disp(cur.data);
    cur = cur.next;
end

% Удаление элементов списка:
cur = list;
while (cur ~= 0)
    prev = cur;
    cur = cur.next;
    free(prev);
end


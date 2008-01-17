function insert(a, x, k)

% insert(a, x, k) inserts the element x with key k

newroot = do_insert(getroot(a.bintree), x, k);
setroot(a.bintree, newroot);

function [cur, heightchange] = do_insert(cur, data, key)
% Источник: Н.Вирт Алгоритмы + структуры данных = программы

if cur == 0
    cur = pointer;
    cur.left = 0;
    cur.right = 0;
    cur.key = key;
    cur.data = data;
    cur.balance = 0;
    heightchange = 1;
elseif key == cur.key
    cur.data = data;
    heightchange = 0;
elseif key < cur.key
    [cur.left, heightchange] = do_insert(cur.left, data, key);
    if heightchange == 1 % Выросла левая ветвь
        switch cur.balance
            case 1 % Правая ветвь длиннее
                cur.balance = 0;
                heightchange = 0;
            case 0 % Ветви равной длины
                cur.balance = -1;
            case -1 % Левая ветвь длиннее
                % Балансировка
                left = cur.left;
                if left.balance == -1
                    % Однократный LL-поворот
                    cur.left = left.right
                    left.right = cur;
                    cur.balance = 0;
                    cur = left;
                else
                    % Двойной LR-поворот
                    right = left.right;
                    left.right = right.left; right.left = left;
                    cur.left = right.right; right.right = cur;
                    if right.balance == -1
                        cur.balance = 1;
                    else
                        cur.balance = 0;
                    end
                    if right.balance == 1
                        left.balance = -1;
                    else
                        left.balance = 0;
                    end
                    cur = right;
                end
                cur.balance = 0;
                heightchange = 0;
        end
    end
else % if key > cur.key
    [cur.right, heightchange] = do_insert(cur.right, data, key);
    if heightchange == 1 % Выросла правая ветвь
        switch cur.balance
            case -1 % Левая ветвь длиннее
                cur.balance = 0;
                heightchange = 0;
            case 0 % Ветви равной длины
                cur.balance = 1;
            case 1 % Правая ветвь длиннее
                % Балансировка
                right = cur.right;
                if right.balance == 1
                    % Однократный RR-поворот
                    cur.right = right.left
                    right.left = cur;
                    cur.balance = 0;
                    cur = right;
                else
                    % Двойной RL-поворот
                    left = right.left;
                    right.left = left.right; left.right = right;
                    cur.right = left.left; left.left = cur;
                    if left.balance == 1
                        cur.balance = -1;
                    else
                        cur.balance = 0;
                    end
                    if left.balance == -1
                        right.balance = 1;
                    else
                        right.balance = 0;
                    end
                    cur = left;
                end
                cur.balance = 0;
                heightchange = 0;
        end
    end
end


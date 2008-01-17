function animals

% Игра <<Животные>>

    disp('**** Ж И В О Т Н Ы Е ****');
    if exist('animals.mat', 'file')
        load animals;
        Tree = readtable(Table);
    else
        disp('Файл animals.mat не найден');
        disp('База пуста');
        Tree = [];
    end

    Tree = game(Tree);

    if input_ans('Сохранить изменения')
        Table = writetable(Tree);
        save animals Table;
    end

    release(Tree);
end

% Основной алгоритм реализует функция $root = game(root)$.
% На ее вход подается корень поискового дерева. На выходе --- корень дерева после одного сеанса игры.

function root = game(root)

    if nargin < 1 || isempty(root)
        root = malloc;
        root.question = 'КОТ';
    end

    while 1
        cur = root;
    
	disp('');
        disp('Задумайте животное!');
        if ~input_ans('Вы готовы?')
            return
        end

        while isfield(struct(cur), 'yes') && isfield(struct(cur), 'no')
            if input_ans([cur.question '?'])
                cur = cur.yes;
            else
                cur = cur.no;
            end
        end

        animal = cur.question;
        disp(['Это ', animal]);
        if ~input_ans('Верно?')
            user_animal = upper(input_str('Так, что же вы задумали? '));
            disp(['Введите утверждение, верное для ' animal ...
                ' и неверное для ' user_animal ',']);
            disp(['или наоборот: верное для ' user_animal ...
                ' но неверное для ' animal '.']);
            disp('Например: у него есть хобот');
            question = input_str('-> ');

            cur.question = question;
            cur.yes = malloc;
            cur.no = malloc;

            if input_ans(['Какой правильный ответ для ' user_animal '?']);
                cur.yes.question = user_animal;
                cur.no.question = animal;
            else
                cur.yes.question = animal;
                cur.no.question = user_animal;
            end
        end
    end
end

% Следующие две функции используются при сохранении поискового дерева на
% диске и чтении его с диска. На диске дерево хранится как специальный
% массив структур с двумя полями $yesno$ и $question$. 
% Функция $tbl = writetable(root)$ обходит дерево поиска, заданное корнем 
% $root$, и запоминает всю информацию в массиве структур $tbl$. 
% Реализован обычный рекурсивный алгоритм обхода (поиск в глубину).

function tbl = writetable(root)
    tbl(1).yesno = NaN;
    iterate(root)

    function iterate(cur)
        tbl(end).question = cur.question;

        if isfield(struct(cur), 'yes') && isfield(struct(cur), 'no')
            tbl(end + 1).yesno = 1;
            iterate(cur.yes)

            tbl(end + 1).yesno = 0;
            iterate(cur.no)
        end
    end
end

% Функция $root = readtable(tbl)$ по таблице $tbl$ строит соответствующее
% поисковое дерево и возвращает его корень $root$.

function root = readtable(tbl)

    root = malloc;
    i = 0;
    do_readtable(root);

    function do_readtable(cur)
        i = i + 1;
        cur.question = tbl(i).question;

        if i < length(tbl) && tbl(i + 1).yesno == 1
            cur.yes = malloc;
            do_readtable(cur.yes);
            cur.no = malloc;
            do_readtable(cur.no);
        end
    end
end

% Функция $release(root)$ освобождает память, занимаемую
% поисковым деревом с корнем $root$.

function release(root)

    do_release(root)

    function do_release(cur)
        if isfield(struct(cur), 'yes') && isfield(struct(cur), 'no')
            do_release(cur.yes);
            do_release(cur.no);
        else
            free(cur);
        end
    end
end

% Следующие две функции являются вспомогательными и предназначены 
% для организации диалога между компьютером и человеком.

function answer = input_ans(prompt)
    list = 'дн';
    default = 'д';
    while 1
        ch = input([prompt ' Д/Да/Н/Нет [Да]-> '], 's');
        if isempty(ch)
            ch = default;
        end
        ch = lower(ch(1));
        if ~isempty(find(list == ch, 1))
            break
        end
    end
    if ch == 'д'
        answer = 1;
    else
        answer = 0;
    end
end

function answer = input_str(prompt)
    while 1
        answer = input(prompt, 's');
        if ~isempty(answer)
            return
        end
    end
end


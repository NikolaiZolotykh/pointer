function animals

% ���� <<��������>>

    disp('**** � � � � � � � � ****');
    if exist('animals.mat', 'file')
        load animals;
        Tree = readtable(Table);
    else
        disp('���� animals.mat �� ������');
        disp('���� �����');
        Tree = [];
    end

    Tree = game(Tree);

    if input_ans('��������� ���������')
        Table = writetable(Tree);
        save animals Table;
    end

    release(Tree);
end

% �������� �������� ��������� ������� $root = game(root)$.
% �� �� ���� �������� ������ ���������� ������. �� ������ --- ������ ������ ����� ������ ������ ����.

function root = game(root)

    if nargin < 1 || isempty(root)
        root = malloc;
        root.question = '���';
    end

    while 1
        cur = root;
    
	disp('');
        disp('��������� ��������!');
        if ~input_ans('�� ������?')
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
        disp(['��� ', animal]);
        if ~input_ans('�����?')
            user_animal = upper(input_str('���, ��� �� �� ��������? '));
            disp(['������� �����������, ������ ��� ' animal ...
                ' � �������� ��� ' user_animal ',']);
            disp(['��� ��������: ������ ��� ' user_animal ...
                ' �� �������� ��� ' animal '.']);
            disp('��������: � ���� ���� �����');
            question = input_str('-> ');

            cur.question = question;
            cur.yes = malloc;
            cur.no = malloc;

            if input_ans(['����� ���������� ����� ��� ' user_animal '?']);
                cur.yes.question = user_animal;
                cur.no.question = animal;
            else
                cur.yes.question = animal;
                cur.no.question = user_animal;
            end
        end
    end
end

% ��������� ��� ������� ������������ ��� ���������� ���������� ������ ��
% ����� � ������ ��� � �����. �� ����� ������ �������� ��� �����������
% ������ �������� � ����� ������ $yesno$ � $question$. 
% ������� $tbl = writetable(root)$ ������� ������ ������, �������� ������ 
% $root$, � ���������� ��� ���������� � ������� �������� $tbl$. 
% ���������� ������� ����������� �������� ������ (����� � �������).

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

% ������� $root = readtable(tbl)$ �� ������� $tbl$ ������ ���������������
% ��������� ������ � ���������� ��� ������ $root$.

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

% ������� $release(root)$ ����������� ������, ����������
% ��������� ������� � ������ $root$.

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

% ��������� ��� ������� �������� ���������������� � ������������� 
% ��� ����������� ������� ����� ����������� � ���������.

function answer = input_ans(prompt)
    list = '��';
    default = '�';
    while 1
        ch = input([prompt ' �/��/�/��� [��]-> '], 's');
        if isempty(ch)
            ch = default;
        end
        ch = lower(ch(1));
        if ~isempty(find(list == ch, 1))
            break
        end
    end
    if ch == '�'
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


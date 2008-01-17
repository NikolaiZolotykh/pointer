function [x, k] = remove(a, p)

% [x, k] = remove(a, p) removes the element with pointer p,
%     release the memory occupyed by the node and returns the element
%     and the key

x = p.data;
k = p.key;

newroot = do_remove(getroot(a.bintree), p);
setroot(a.bintree, newroot);

function avl = do_remove(avl, node)

% ������� $do_remove$ --- �������� ���� �� ���-������
% $avl = do_remove(avl, node)$ ������� $node$ �� ������ $avl$
% ��������: �.���� ��������� + ��������� ������ = ���������
% � �����������

avl = do_avl_del(avl, node.key, 0);

function [cur, heightchange] = do_avl_del(cur, key, heightchange)

if cur == 0
    error('Key is not in tree')
    heightchange = 0;
elseif key < cur.key
    [cur.left, heightchange] = do_avl_del(cur.left, key, heightchange);
    if heightchange
        [cur, heightchange] = balancel(cur, heightchange);
    end
elseif key > cur.key
    [cur.right, heightchange] = do_avl_del(cur.right, key, heightchange);
    if heightchange
        [cur, heightchange] = balancer(cur, heightchange);
    end
else
    % ��������� $cur$
    oldcur = cur;
    if cur.right == 0
        cur = cur.left;
        heightchange = 1;
    elseif cur.left == 0
        cur = cur.right;
        heightchange = 1;
    else
        [oldcur, cur.left, heightchange] = del(oldcur, oldcur.left, heightchange);
        if heightchange
            [cur, heightchange] = balancel(cur, heightchange);
        end
    end
    free(oldcur);
end

function [oldcur, cur, heightchange] = del(oldcur, cur, heightchange)

% ��������� �� ��������� $oldcur$ ������ $oldcur$

if cur.right ~= 0
    [oldcur, cur.right, heightchange] = del(oldcur, cur.right, heightchange);
    if heightchange
        [cur, heightchange] = balancer(cur, heightchange);
    end
else
    % ������ ���� $oldcur$ ������ $cur$
    % ����� ���� ��� �������� �������� � �������, � �� � ������
    oldcur.key = cur.key;
    oldcur.data = cur.data;
    oldcur = cur;
    cur = cur.left;
    heightchange = 1;
end

function [cur, heightchange] = balancel(cur, heightchange)

switch cur.balance
    case -1
        cur.balance = 0;
    case 0
        cur.balance = 1;
        heightchange = 0;
    case 1
        % ������������
        right = cur.right;
        if right.balance >= 0
            % ����������� RR-�������
            cur.right = right.left;
            right.left = cur;
            if right.balance == 0
                cur.balance = 1;
                right.balance = -1;
                heightchange = 0;
            else
                cur.balance = 0;
                right.balance = 0;
            end
            cur = right;
        else
            % ������� RL-�������
            left = right.left;
            right.left = left.right;
            left.right = right;
            cur.right = left.left;
            left.left = cur;
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
            left.balance = 0;
        end
end

function [cur, heightchange] = balancer(cur, heightchange)

switch cur.balance
    case 1
        cur.balance = 0;
    case 0
        cur.balance = -1;
        heightchange = 0;
    case -1
        % ������������
        left = cur.left;
        if left.balance <= 0
            % ����������� LL-�������
            cur.left = left.right;
            left.right = cur;
            if left.balance == 0
                cur.balance = -1;
                left.balance = 1;
                heightchange = 0;
            else
                cur.balance = 0;
                left.balance = 0;
            end
            cur = left;
        else
            % ������� LR-�������
            right = left.right;
            left.right = right.left;
            right.left = left;
            cur.left = right.right;
            right.right = cur;
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
            right.balance = 0;
        end
end

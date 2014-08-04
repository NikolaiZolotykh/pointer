function graphcomp

E = [1, 5; 5, 9; 9, 6; 6, 1; 1, 9; 3, 2; 7, 8; 8, 4; 4, 7];
x = [0, 2, 2, 3, 1, 0, 3, 4, 1];
y = [0, 0, 1, 1, 0, 1, 0, 0, 1];
G = graph(E, x, y)
draw(G) % ������ ����; ��. ���. \ref{graphcomp1}
pause

djs = components(E);
% ������ ������, �������������� ������� ����������� ��������
% ��. ���. \ref{graphcomp2}:
djs_graph(djs);
    
for j = 1:max(E(:))
    % ������� ������������, �������� ����������� $j$:
    [name, djs] = djs_find(djs, j); 
    A(j, :) = [j, name];
end
disp('�������������� ������ ����������� ���������:')
disp(A)

function djs = components(E)

n = max(E(:)); % ����� ������
m = size(E, 1); % ����� �����
djs = djs_new;
for j = 1:n
    djs = djs_create(djs, j); % ������� ����������
end

for i = 1:m
    u = E(i, 1);
    v = E(i, 2);
    [superu, djs] = djs_find(djs, u); % ����� ���������, ���������� $u$
    [superv, djs] = djs_find(djs, v); % ����� ���������, ���������� $v$
    if superu ~= superv
        djs = djs_merge(djs, superu, superv); % ���������� ������������
    end
end

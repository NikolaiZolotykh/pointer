% eratoshenes --- ������ ���������� 
% ����������� ������������� ����������� ��������

n = 100; % ���� $n$ ������ ������� �����
djs = djs_new;
djs = djs_create(djs, 2); % �������� 2 � ���������
for i = 1:100 
djs = djs_create(djs, 2);
for i = 1:2:100
    djs = djs_put(djs, i, 1);
end
for i = 2:2:100
    djs = djs_put(djs, i, 2);
end
[subset, djs] = djs_find(djs, number);
if (subset == 1)
    disp([num2str(number), ' - ��������']);
else
    disp([num2str(number), ' - ������']);
end
djs = djs_free(djs);

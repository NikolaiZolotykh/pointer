function nl = nil

% ��������� (nil) ����
% ��������� � ���������� ��������� rb-��������

persistent nilnode;

if isempty(nilnode)
    nilnode = pointer;
    nilnode.parent = 0;
    nilnode.left = 0;
    nilnode.right = 0;
    nilnode.color = 'black';
    nilnode.data = [];
end

nl = nilnode;

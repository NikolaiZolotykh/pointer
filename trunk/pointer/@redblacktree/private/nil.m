function nl = nil

% Фиктивный (nil) лист
% Требуется в алгоритмах обработки rb-деревьев

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

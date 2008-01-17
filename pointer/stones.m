BirthStones = {'Garnet', 'Amethyst', 'Aquamarine', ...
    'Diamond', 'Emerald', 'Pearl', 'Ruby', 'Peridot', ...
    'Sapphire', 'Opal', 'Topaz', 'Turqouze'};
OtherStones = {'Agate', 'Malachite', 'Jasper', 'Hematite'};
 
hp = soh_new; % ������� ����� ����
for i = 1:length(BirthStones)
    hp = soh_put(hp, BirthStones{i}, i); % �������� ������
end
soh_graph(hp) % ����������� �����������. ��. ���. \ref{stones1}
pause
 
hp = soh_delmin(hp); % ������� ������� � ����������� �����
soh_graph(hp) % ����������� �����������. ��. ���. \ref{stones2}
pause
 
hp2 = soh_new; % ������� ����� ����
for i = 1:length(OtherStones)
    hp2 = soh_put(hp2, OtherStones{i}, i); % �������� ������
end
soh_graph(hp2) % ����������� �����������. ��. ���. \ref{stones3}
pause
 
hp = soh_merge(hp, hp2); % ������� ����. ����� ������� $hp2$ �����
soh_graph(hp) % ����������� �����������. ��. ���. \ref{stones4}
 
hp = soh_free(hp); % ����������� ������

BirthStones = {'Garnet', 'Amethyst', 'Aquamarine', ...
    'Diamond', 'Emerald', 'Pearl', 'Ruby', 'Peridot', ...
    'Sapphire', 'Opal', 'Topaz', 'Turqouze'};
OtherStones = {'Agate', 'Malachite', 'Jasper', 'Hematite'};
 
hp = soh_new; % Создаем новую кучу
for i = 1:length(BirthStones)
    hp = soh_put(hp, BirthStones{i}, i); % Помещаем данные
end
soh_graph(hp) % Графическое изображение. См. рис. \ref{stones1}
pause
 
hp = soh_delmin(hp); % Удаляем элемент с минимальным весом
soh_graph(hp) % Графическое изображение. См. рис. \ref{stones2}
pause
 
hp2 = soh_new; % Создаем новую кучу
for i = 1:length(OtherStones)
    hp2 = soh_put(hp2, OtherStones{i}, i); % Помещаем данные
end
soh_graph(hp2) % Графическое изображение. См. рис. \ref{stones3}
pause
 
hp = soh_merge(hp, hp2); % Сливаем кучи. После слияния $hp2$ пуста
soh_graph(hp) % Графическое изображение. См. рис. \ref{stones4}
 
hp = soh_free(hp); % Освобождаем память

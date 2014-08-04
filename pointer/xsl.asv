sl = sl_new;

fid = fopen('xsl.m', 'r'); % Открываем файл на чтение
while ~feof(fid)
    line = fgetl(fid); % Читаем строку
    if isempty(line);
        line = ' ';
    end
    sl = sl_put(sl, line); % Размещаем строку в списке 
end
fclose(fid);

disp('Печать содержимого файла (в обратном порядке)');
sl_disp(sl);

sl = sl_free(sl);
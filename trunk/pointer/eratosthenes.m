% eratoshenes --- решето Эратосфена 
% Иллюстрация использования разделенных множеств

n = 100; % ищем $n$ первых простых чисел
djs = djs_new;
djs = djs_create(djs, 2); % Помещаем 2 в коллекцию
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
    disp([num2str(number), ' - нечетное']);
else
    disp([num2str(number), ' - четное']);
end
djs = djs_free(djs);

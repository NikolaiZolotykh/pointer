function insert(a, x, k)

% insert(a, x, k) inserts the element x with key k

newroot = do_insert(getroot(a.bintree), x, k);
setroot(a.bintree, newroot);

function rb = do_insert(rb, data, key)

% Ищем позицию вставки элемента
cur = rb;
parent = 0;
while cur ~= nil
    if key == cur.key
        % Ключ найден. Записываем данные
        cur.data = data;
        return
    end
    parent = cur;
    if key < cur.key
        cur = cur.left;
    else
        cur = cur.right;
    end
end

x = pointer;
x.data = data;
x.key = key;
x.parent = parent;
x.left = nil;
x.right = nil;
x.color = 'red';

if parent ~= 0
    if key < parent.key
        parent.left = x;
    else
        parent.right = x;
    end
else
    rb = x;
end

while x ~= rb && isequal(x.parent.color, 'red')
    if x.parent == x.parent.parent.left
        y = x.parent.parent.right;
        if  isequal(y.color, 'red')
            x.parent.color = 'black';
            y.color = 'black';
            x.parent.parent.color = 'red';
            x = x.parent.parent;
        else
            if x == x.parent.right
                x = x.parent;
                rb = leftrotation(rb, x);
            end

            x.parent.color = 'black';
            x.parent.parent.color = 'red';
            rb = rightrotation(rb, x.parent.parent);
        end
    else
        y = x.parent.parent.left;
        if isequal(y.color, 'red')
            x.parent.color = 'black';
            y.color = 'black';
            x.parent.parent.color = 'red';
            x = x.parent.parent;
        else
            if x == x.parent.left
                x = x.parent;
                rb = rightrotation(rb, x);
            end
            x.parent.color = 'black';
            x.parent.parent.color = 'red';
            rb=leftrotation(rb, x.parent.parent);
        end
    end
end
rb.color = 'black';


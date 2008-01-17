function draw(a)

clf
axis auto
hold on
do_draw(getroot(a.bintree), 0, 0, 16, 1);
hold off
axis off
shg

function do_draw(node, x, y, dx, dy)

if node ~= 0
    text(x + 1, y, num2str(node.data));
    if node.left ~= 0
        newx = x - dx;
        newy = y - dy;
        plot([x, newx], [y, newy], '-k');
        do_draw(node.left, newx, newy, dx/2, dy);
    end

    if node.right ~= 0
        newx = x + dx;
        newy = y - dy;
        plot([x, newx], [y, newy], '-k');
        do_draw(node.right, newx, newy, dx/2, dy);
    end

    % Узел рисуем в последнюю очередь, чтобы маркер закрыл ребро
    switch node.color
        case 'red'
            plot(x, y, '.r', 'MarkerSize', 30);
        case 'black'
            plot(x, y, '.k', 'MarkerSize', 30);
    end

end
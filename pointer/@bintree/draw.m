function draw(a)

% draw(a) draws binary tree

clf
axis auto
hold on
do_draw(a.data.root, 0, 0, 16, 1)
hold off
axis off
shg

function do_draw(node, x, y, dx, dy)

if node ~= 0
    text(x + 1, y, num2str(node.data));

    if node.left ~= 0
        newx = x - dx;
        newy = y - dy;
        plot([x, newx], [y, newy], 'o-');
        do_draw(node.left, newx, newy, dx/2, dy);
    end

    if node.right ~= 0
        newx = x + dx;
        newy = y - dy;
        plot([x, newx], [y, newy], 'o-');
        do_draw(node.right, newx, newy, dx/2, dy);
    end
end



function h = avl_demo

h = avl;

weights = (96.^(14:-1:0))';
tic
fid = fopen('random','r');
for i = 1:50
  line = fgetl(fid);
  if isempty(line);
    line = ' ';
  end
  key = line - ' ';
  key(length(weights)) = 0;
  key = key*weights;
  insert(h, line, key);
end
fclose(fid);
toc

% avl_inord(h,'disp');
draw(h)

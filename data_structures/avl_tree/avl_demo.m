function h=avl_demo

h=avl_new;

weights=(96.^(14:-1:0))';
tic
fid=fopen('random','r');
for i=1:50
  line=fgetl(fid);
  if isempty(line);
    line=' ';
  end
  key=line-' ';
  key(length(weights))=0;
  key=key*weights;
  h=avl_put(h,line,key);
end
fclose(fid);
toc

avl_inord(h,'disp');

if nargout==0
  avl_graph(h);
  avl_free(h);
end


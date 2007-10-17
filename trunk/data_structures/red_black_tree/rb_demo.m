function h=rb_demo
% RB_DEMO
%
%  Demonstrate how a Red-Black binary tree is being used to produce a sorted
%  list of words. A graph of the resulting tree is shown.

% Copyright (c) MathWorks Inc. 1998-2001. All rights reserved.

h=rb_new;

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
  h=rb_put(h,line,key);
end
fclose(fid);
toc

rb_inord(h,'disp');

if nargout==0
  rb_graph(h);
  rb_free(h);
end


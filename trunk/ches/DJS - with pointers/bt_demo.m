function h=bt_demo
% BT_DEMO
%
%  Demonstrate how a binary tree is being used to produce a sorted
%  list of words. A graph of the resulting tree is shown.

% Copyright (c) MathWorks Inc. 1998-2001. All rights reserved.

h=bt_new;

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
  h=bt_put(h,line,key);
end
fclose(fid);
toc

bt_inord(h,'disp');

if nargout==0
  bt_graph(h);
  bt_free(h);
end


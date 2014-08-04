function sl_demo
% SL_DEMO
%
%  Demonstrate the singly linked list routines (sl_*).

% Copyright (c) MathWorks Inc. 1998-2001. All rights reserved.

h=sl_new;

fid=fopen('contents.m','r');
while ~feof(fid)
  line=fgetl(fid);
  if isempty(line);
    line=' ';
  end
  h=sl_puta(h,h.head,line);
end
fclose(fid);

disp('--- reversed contents.m ---');
sl_disp(h);
disp('---------------------------');

h=sl_free(h);


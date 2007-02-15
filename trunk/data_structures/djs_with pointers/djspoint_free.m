function djs=djspoint_free(djs)

%  djs=djspoint_free(djs) deletes set and frees the memory.

%  Copyright 2005-2005 Svetlana Chernishova

if nargin<1
  error('one input argument required.');
end
if nargout<1
  error('one output argument required.');
end

djs.tree=dl_free(djs.tree);
djs.tree=0;
djs.count=-1;
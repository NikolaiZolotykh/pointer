function djs=djspoint_free(djs)

%  djs=djspoint_free(djs) deletes set and frees the memory.

%  Copyright 2005-2005 Svetlana Chernishova

if nargin<1
  error('one input argument required.');
end
if nargout<1
  error('one output argument required.');
end

djs.tops=dl_free(djs.tops);
djs.tops=0;
djs.names=dl_free(djs.names);
djs.names=0;
free(djs);
djs=0;

% deltrees(data) service function; delete tree from data
%  Svetlana Gagarinova  (c) 2005,2006

function deltrees(data)
lazylheap_free(data.tree);
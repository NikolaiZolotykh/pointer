% b=set_isend(set) returns 1 if set is end and 0 if you can go to the next
% element
%  Svetlana Chernishova (c) 2005,2006
%  Svetlana Gagarinova  (c) 2005,2006

function b=set_isend(set)
b=avl_isend(set);
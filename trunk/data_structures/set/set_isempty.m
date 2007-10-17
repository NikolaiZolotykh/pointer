% b=set_isempty(s)returnes 1 if set is empty and 0 if set is not empty
%  Svetlana Chernishova (c) 2005,2006
%  Svetlana Gagarinova  (c) 2005,2006

function b=set_isempty(s)
b=(s.size==0);
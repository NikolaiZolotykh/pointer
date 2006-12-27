% min=set_findmin(set) returns minimal element in set
%  Svetlana Chernishova (c) 2005,2006
%  Svetlana Gagarinova  (c) 2005,2006

function min=set_findmin(set)
if set_isempty(set)
  error('set is empty');
end
p = s.tree;
while p.left~=bt_nil
  p = p.left;
end
min=p.data;
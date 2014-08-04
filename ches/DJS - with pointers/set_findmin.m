function min=set_findmin(set)
if set_isempty(set)
  error('set is empty');
end
p = s.tree;
while p.left~=bt_nil
  p = p.left;
end
min=p.data;
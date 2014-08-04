function max=set_findmax(set)
if set_isempty(set)
  error('set is empty');
end
p = s.tree;
while p.right~=bt_nil
  p = p.right;
end
max=p.data;
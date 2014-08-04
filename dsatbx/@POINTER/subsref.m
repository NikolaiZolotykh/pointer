function b=subsref(obj,s)
b=mt_ref1(obj,s);

if length(s)>1
  b=mt_ref2(b,s(2:end));
end


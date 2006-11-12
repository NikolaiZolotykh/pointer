function obj = subsasgn(obj,s,b)

% SUBSASGN	subsasgn function for pointers.

%   Copyright 2004 Nikolai Yu. Zolotykh


  if s(1).type == '.'
    if prod(size(s)) == 1
      field = s.subs;
      obj = assgn(obj, field, b);
    else
      field = s(1).subs;
      sub_obj = ref(obj, field);
      sub_obj = subsasgn(sub_obj, s(2:end), b);
      obj = assgn(obj, field, sub_obj);
    end;
  else
    error('Specify field for pointer object as obj.field_name')
  end;


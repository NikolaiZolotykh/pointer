function b=subsref(obj,s)

% SUBSREF	subsref function for pointers.

%   Copyright 2004 Nikolai Yu. Zolotykh

  if s(1).type == '.'
    if prod(size(s)) == 1
      field = s.subs;
      b = ref(obj, field);
    else
      field = s(1).subs;
      b = ref(obj, field);
      b = subsref(b, s(2:end));
    end;
  else
    error('Specify field for pointer object as obj.field_name')
  end;

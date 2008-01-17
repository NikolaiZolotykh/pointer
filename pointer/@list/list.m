function a = list

% a = list generates an empty list

a.head = pointer;
a.head.data = 0;
a.head.next = 0;
a = class(a, 'list');
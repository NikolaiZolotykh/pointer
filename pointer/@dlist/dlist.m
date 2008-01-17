function a = dlist

% a = list generates an empty doubly linked list

a.head = pointer;
a.tail = pointer;
a.head.next = a.tail;
a.tail.prev = a.head;
a = class(a, 'dlist');
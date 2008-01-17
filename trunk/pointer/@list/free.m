function free(a)

% free(a) releases memory occupied by the singly linked list a

p = a.head;

while(p)
    p1 = p;
    p = next(a, p);
    free(p1);
end


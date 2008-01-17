function free(a)

% free(a) releases memory occupaied by the doubly linked list a

p = a.head;

while(p ~= a.tail)
    p1 = p;
    p = p.next;
    free(p1);
end


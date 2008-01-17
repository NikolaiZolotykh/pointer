function n = size(a)

% n = size(a) returns the length of a

    n = 0;
    p = a.head;
    while p.next
        n = n + 1;
        p = p.next;
    end

    
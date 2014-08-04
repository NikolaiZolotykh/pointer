function n = list_size(list)

    n = 0;
    p = list.head;
    while p.next
        n = n + 1;
        p = p.next;
    end

    
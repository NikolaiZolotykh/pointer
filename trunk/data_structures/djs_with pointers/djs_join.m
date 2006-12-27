function djs=djs_join(djs,name1,name2)

%  djs=djs_join(djs,x,y) unites two subsets x and y
%  and returns changed set djs.

%  Copyright 2005-2005 Svetlana Chernishova

s1=djs_getsizesubset(djs,name1);
s2=djs_getsizesubset(djs,name2);

if s1<=s2
    head=djs.tree.head.next;
    i=1;
    k=1;
    while (head~=0)||(k<=s1)
        node=head.data;
        if node.parent==name1
            if i<=djs.count
                k=k+1;
            else
                node.parent=name2;
                k=k+1;
            end
        end
        head=head.next;
        i=i+1;
    end
    head1=djs.tree.head.next;
    n=1;
    while n<=djs.count
        node=head1.data;
        if node.parent==name1
            temp1=node;
        elseif node.parent==name2
            temp2=node;
        end    
        head1=head1.next;
        n=n+1;
    end
    temp=temp1.data;
    temp2.size=temp2.size+temp1.size-1;
    djs=djs_delete_element(djs,temp);
    djs=djs_put(djs,temp,name2);
else
    head=djs.tree.head.next;
    i=1;
    k=1;
    while (head~=0)||(k<=s2)
        node=head.data;
        if node.parent==name2
            if i<=djs.count
                k=k+1;
            else
                node.parent=name1;
                k=k+1;
            end
        end
        head=head.next;
        i=i+1;
    end
    head1=djs.tree.head.next;
    n=1;
    while n<=djs.count
        node=head1.data;
        if node.parent==name2
            temp1=node;
        elseif node.parent==name1
            temp2=node;
        end    
        head1=head1.next;
        n=n+1;
    end
    temp=temp1.data;
    temp2.size=temp2.size+temp1.size-1;
    djs=djs_delete_element(djs,temp);
    djs=djs_put(djs,temp,name1);
end
function dl=dl_delforRR(dl,data)
n=dl.head.next; 
while(n~=0)
  if(n.data.vert==data)
   n.prev.next=n.next;
   if n.next~=0
      n.next.prev=n.prev;
   else
    dl.tail=n.prev;
   end
   free(n);
   dl.head.len=dl.head.len-1;
   return;
  end;
  n=n.next;
end;
 
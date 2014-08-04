function node=dl_find(dl,data)
n=dl.head.next; 
while(n~=0)
  if(n.data==data)
   node=pointer;   
   node.data=n.data;
   node.next=n.next;
   node.prev=n.prev;
   return;
  end;
  n=n.next;
end;
 node=0;
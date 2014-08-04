function node=dl_findforRR(dl,data)
n=dl.head.next; 
node=pointer;
while(n~=0)
  if(n.data.vert==data)
   node.data.vert=data;
   node.data.tree=n.data.tree;
   node.prev=n.prev;
   node.next=n.next;
   return;
  end;
  n=n.next;
end;
node=0;
 
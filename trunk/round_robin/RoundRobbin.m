function Skeleton=RoundRobbin(ListVert)
 Skeleton=sl_new;
 Q=dl_new;
 Part=djs_new;
 len=sl_count(ListVert);
 for i=1:len
     v=sl_get(ListVert);
     ListVert=sl_del(ListVert);
     Part=djs_create(Part,v.data);
     newv.vert=v.data;
     newv.tree=lheap_listtoheap(v.list);
     Q=dl_puta(Q,Q.tail,newv);         
 end;
 i=0;
while(sl_count(Q)>=2)
    cur=dl_get(Q);
    Q=dl_delfirst(Q);
    stre=lheap_findminprior(cur.tree);
    cur.tree=lheap_delminprior(cur.tree);
    Q=dl_puta(Q,Q.head,cur);
    e.beg=stre.data.beg;
    e.fin=stre.data.fin;
    e.price=stre.prior;
    Skeleton=sl_insrt(Skeleton,e);
    v=e.beg;
    w=e.fin;
    name1=djs_find(Part,v);
    v1=djs_nametoroot(Part,name1);
    name2=djs_find(Part,w);
    w1=djs_nametoroot(Part,name2);
    node1=dl_findforRR(Q,v1.data);
    node2=dl_findforRR(Q,w1.data);
    if(name1~=name2)
     Part=djs_join(Part,name1,name2);
    end;
    if(v1.size<=w1.size)
      z=djs_nametoroot(Part,name2);
    else
      z=djs_nametoroot(Part,name1);  
    end;
    newv.vert=z.data;
      
      e.beg=e.fin;
      e.fin=stre.data.beg;
      node2.data.tree=lheap_findforRR(node2.data.tree,e);
      node2.data.tree=lheap_diffprior1(node2.data.tree,100);
       
    if(name1~=name2)
      [node1.data.tree,node2.data.tree]=lheap_merge(node1.data.tree,node2.data.tree);
       newv.tree=node1.data.tree;
    else
     Skeleton=sl_del(Skeleton);
      newv.tree=node2.data.tree;
    end;
    Q=dl_del(Q,node1);
    node2=dl_findforRR(Q,w1.data);
    if node2~=0
     Q=dl_del(Q,node2);
    end;
    Q=dl_puta(Q,Q.tail,newv);
end;
dl_trav(Q,'deltrees');
Q=dl_free(Q);
Part=djs_free(Part);



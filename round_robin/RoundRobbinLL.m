
%вершины в списке подряд от 1 до n
function Skeleton=RoundRobbinLL(ListVert)
 tic
 Skeleton=sl_new;
 Q=dl_new;
 Part=djs_new;
 len=sl_count(ListVert);
 for i=1:len
     v=sl_get(ListVert);
     ListVert=sl_del(ListVert);
     Part=djs_create(Part,v.data);
     newv.vert=v.data;
     newv.tree=lazylheap_listtoheap(v.list);
     Q=dl_puta(Q,Q.head,newv); 
     a=pointer;
     a.data=Q.head.next;
     Harar(newv.vert).data=a;
 end;
 while(sl_count(Q)>=2)
    cur=dl_get(Q);
    Q=dl_delfirst(Q);
    if (~lazylheap_empty(cur.tree))
    [stre,cur.tree]=lazylheap_findminprior(cur.tree);
    cur.tree=lazylheap_delminprior(cur.tree);
    Q=dl_puta(Q,Q.head,cur);
    Harar(cur.vert).data.data=Q.head.next;
    e.beg=stre.data.beg;
    e.fin=stre.data.fin;
    e.price=stre.prior;
    Skeleton=sl_insrt(Skeleton,e);
    v=e.beg;
    w=e.fin;
    [v1,Part]=djs_elemtoroot(Part,v);
    [w1,Part]=djs_elemtoroot(Part,w);
    node1=copy(Harar(v1.data).data.data);
    node2=copy(Harar(w1.data).data.data);
    if(v1.data~=w1.data) 
      Part=djs_join(Part,v1.data,w1.data);
    end;
    if(v1.size<=w1.size)
      z=w1.data;%djs_elemtoroot(Part,w1.data);
    else
      z=v1.data;%djs_elemtoroot(Part,v1.data);  
    end;
    newv.vert=z;%.data;
%          e.beg=e.fin;
%       e.fin=stre.data.beg;
%       node2.data.tree=lazylheap_findforRR(node2.data.tree,e);
%       node2.data.tree=lazylheap_diffprior1(node2.data.tree,100);
    if(v1.data~=w1.data)
      [node1.data.tree,node2.data.tree]=lazylheap_merge(node1.data.tree,node2.data.tree);
      newv.tree=node1.data.tree;
    else
     Skeleton=sl_del(Skeleton);
      newv.tree=node2.data.tree;
    end;
    Q=dl_del(Q,node1);
    Harar(v1.data).data.data=0;
    if Harar(w1.data).data.data~=0
     node2=copy(Harar(w1.data).data.data);
    else node2=0;
    end;    
    if node2~=0
     Q=dl_del(Q,node2);
    end;
    Q=dl_puta(Q,Q.tail,newv);
    Harar(newv.vert).data=pointer;
    Harar(newv.vert).data.data=Q.tail;
    else
     Q=dl_puta(Q,Q.tail,cur);
     Harar(cur.vert).data=pointer;
     Harar(cur.vert).data.data=Q.tail;
    end; 
end;
toc
dl_trav(Q,'deltrees');
Q=dl_free(Q);

%Part=djs_free(Part);



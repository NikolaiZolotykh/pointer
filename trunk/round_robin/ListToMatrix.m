function m=ListToMatrix(l,n)
for i=1:n
 for j=1:n 
     fl=0; 
     s=l.head.next;   
  for k=1:sl_count(l)
     if((s.data.beg==i)&&(s.data.fin==j))||((s.data.fin==i)&&(s.data.beg==j))
        fl=1;
         break;
     end; 
     s=s.next;
  end;
  if(fl==1)
      m(i,j)=s.data.price;
  else
     m(i,j)=0; 
  end;
 end;
end; 
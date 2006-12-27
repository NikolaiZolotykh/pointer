% set=set_intersect(set1,set2)returns intersection of two sets 
%  Svetlana Chernishova (c) 2005,2006
%  Svetlana Gagarinova  (c) 2005,2006

function set=set_intersect(set1,set2)
 set=set_new;
 set1=set_reset(set1);
 set2=set_reset(set2);
 while (~set_isend(set1))&&(~set_isend(set2))
  if set1.current.data.data<set2.current.data.data
   set1=set_next(set1);
  elseif set1.current.data.data>set2.current.data.data
   set2=set_next(set2);
  else
   set=set_insert(set,set1.current.data.data);
   set1=set_next(set1);
   set2=set_next(set2);
  end 
 end 
 if set_isend(set1)
  while (set1.current.data.data>set2.current.data.data)&&(~set_isend(set2))
     set2=set_next(set2);
  end   
  if set1.current.data.data==set2.current.data.data 
    set=set_insert(set,set1.current.data.data);  
  end
 else
  while (set1.current.data.data<set2.current.data.data)&&(~set_isend(set1))
     set1=set_next(set1);
  end   
  if set1.current.data.data==set2.current.data.data 
    set=set_insert(set,set1.current.data.data);  
  end   
 end      
   
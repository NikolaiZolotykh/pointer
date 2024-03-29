% yn=set_equal(set1,set2)returns 1 if sets are equal or 0 if sets are not equal
%  Svetlana Chernishova (c) 2005,2006
%  Svetlana Gagarinova  (c) 2005,2006

function yn=set_equal(set1,set2)
yn=1;
if set1.size~=set2.size
  yn=0;  
else  
 set1=set_reset(set1);
 set2=set_reset(set2);
 while yn&&(~set_isend(set1))
  if set1.current.data.data==set2.current.data.data
   set1=set_next(set1);
   set2=set_next(set2);
  else
   yn=0;
  end
 end 
 if yn&&(set1.current.data.data~=set2.current.data.data)
  yn=0;
 end   
end     
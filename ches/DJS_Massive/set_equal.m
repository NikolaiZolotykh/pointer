function yn=set_equal(set1,set2)
yn=1;
if set1.size~=set2.size
  yn=0;  
else  
 set1=set_reset(set1);
 set2=set_reset(set2);
 while yn&&(~set_isend(set1))
  if set1.current.data==set2.current.data
   set1=set_next(set1);
   set2=set_next(set2);
  else
   yn=0;
  end
 end 
 if yn&&(set1.current.data~=set2.current.data)
  yn=0;
 end   
end     
% finds simple numbers using sets and Eratosfen method
%  Svetlana Gagarinova  (c) 2005,2006

s=set_new;
for i=2:100 
 s=set_insert(s,i);   
end
for i=2:10
 for j=2:((100-mod(100,i))/i)   
 a=set_find(s,i*j);   
 if a~=0
  s=set_delete(s,i*j);
 end
 end 
end 
%s=set_reset(s);
%while ~set_isend(s)
%disp(s.current.data);
%s=set_next(s);
%end
%disp(s.current.data);
set_show(s);
s=set_free(s);
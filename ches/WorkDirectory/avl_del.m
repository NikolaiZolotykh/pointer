function avl = avl_del(avl,key)%удаление только по ключу

global bt_nil avl_heightchange avl_counter 
global yn;
avl_heightchange = 1;
avl_counter = 1;
if avl.current.data==key
  avl=avl_reset(avl);
end 
avl.tree = avl_del2(bt_nil,avl.tree,key);
if yn
 avl.size=avl.size-1;
end 
  


function avl = avl_del2(avl,current,key)
global yn
global bt_nil avl_heightchange avl_counter avl_lh avl_eh avl_rh
yn=1;
previous = avl;

if previous~=bt_nil
	if current == previous.left
   	parent = 1;
	else
   	parent = 0;
   end
end

if current~=bt_nil
   if key < current.key      
      current = avl_del2(current,current.left,key);
      if previous~=bt_nil
	      if parent == 1
   	      previous.left = current;
      	else
         	previous.right = current;
         end  
      end      
   elseif key > current.key
      current = avl_del2(current,current.right,key);
      if previous~=bt_nil
	      if parent == 1
   	      previous.left = current;
      	else
         	previous.right = current;
         end  
      end  
   else
      if (current.left~=bt_nil) & (current.right~=bt_nil)
         p = current.left;
         while p.right~=bt_nil
            p = p.right;
         end
         dat = p.data;
         k = p.key;
         p.data = current.data;
         p.key = current.key;
         current.data = dat;
         current.key = k;
         current = avl_del2(current,current.left,key);
         if previous~=bt_nil
	      	if parent == 1
   	 	     previous.left = current;
      		else
         		previous.right = current;
         	end  
      	end  
      end
      if avl_counter == 1
         if previous~=bt_nil
            if parent == 1
               if current.left~=bt_nil
                  previous.left = current.left;
               else
                  previous.left = current.right;
               end
            else
               if current.left~=bt_nil
                  previous.right = current.left;
               else
                  previous.right = current.right;
               end
            end
            free(current);
         else
            p = current;
            if current.left~=bt_nil
               current = current.left;
            else 
               current = current.right;
            end
            free(p);
         end
         avl_counter = 0;
      end
   end
   if avl_heightchange == 1
      if previous~=bt_nil
         switch previous.bf
         case avl_eh
            if parent == 1
               previous.bf = avl_rh;
            else
               previous.bf = avl_lh;
            end
            avl_heightchange = 0;
         case avl_lh
            if parent == 1
               previous.bf = avl_eh;
            else
               previous = avl_bl(previous);
            end
         case avl_rh
            if parent == 0
               previous.bf = avl_eh;
            else
               previous = avl_br(previous);
            end
         end
      end
   end
   
   if previous~=bt_nil          
      avl = previous;
   else
      avl = current;
   end
else yn=0;
end
    

   
 
		
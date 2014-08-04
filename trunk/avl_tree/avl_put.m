function avl = avl_put(avl,data,key)
global avl_heightchange
global yn;
avl_heightchange = 0;
avl.tree=avl_put2(avl.tree,data,key);
if yn
 avl.size=avl.size+1;
end 


function avl=avl_put2(avl,data,key)
global yn;
yn=1;
global bt_nil avl_heightchange avl_lh avl_eh avl_rh
avl_heightchange = 0;
current = avl;

if current == bt_nil
   node=pointer;	
	node.left=bt_nil;
   node.right=bt_nil;
   node.key=key;
   node.data=data;
   node.bf = avl_eh;
   avl_heightchange = 1;
   avl = node;
elseif key == current.key
   avl = current;
   yn=0;
elseif key < current.key
   current.left = avl_put2(current.left,data,key);
   if avl_heightchange == 1
      switch current.bf
      case avl_lh
         current = avl_bl(current);
         avl_heightchange = 0;
      case avl_eh
         current.bf = avl_lh;
      case avl_rh
         current.bf = avl_eh;
         avl_heightchange = 0;
      end
   end
   avl = current;
else
   current.right = avl_put2(current.right,data,key);
   if avl_heightchange == 1
      switch current.bf
      case avl_lh
         current.bf = avl_eh;         
         avl_heightchange = 0;
      case avl_eh
         current.bf = avl_rh;
      case avl_rh
         current = avl_br(current);
         avl_heightchange = 0;
      end
   end
   avl = current; 
end

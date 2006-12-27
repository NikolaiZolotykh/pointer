function avl = avl_rl(avl)

global bt_nil

current = avl;
rightChild = current;

if (current == bt_nil) | (current.right == bt_nil)
   disp('Error in rotating left');
else
   rightChild = current.right;
   current.right = rightChild.left;
   rightChild.left = current;
end

avl = rightChild;
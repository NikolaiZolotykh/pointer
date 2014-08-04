function avl = avl_rr(avl)

global bt_nil

current = avl;
leftChild = current;

if (current == bt_nil) | (current.left == bt_nil)
   disp('Error in rotating right');
else
   leftChild = current.left;
   current.left = leftChild.right;
   leftChild.right = current;
end

avl = leftChild;
% Data Structures & Algorithms Toolbox
% Version 1.03		8-Aug-2001
%
% Demonstrartions.
%	avl_demo    - AVL binary tree demo.
%	bt_demo     - Binary tree demo.
%	rb_demo     - Red-Black binary tree demo.
%                (compare to bt_demo!)
%	sl_demo     - Singly linked list demo.
%
% Binary tree.
%	bt_del      - Delete a node.
%	bt_find     - Find a node.
%	bt_free     - Free allocated tree.
%	bt_graph    - Graph the tree.
%	bt_inord    - Traverse the tree inorder.
%	bt_new      - Allocate a new tree.
%	bt_posto    - Traverse the tree postorder.
%	bt_preor    - Traverse the tree preorder.
%	bt_put      - Add a node.
%
% Red-Black (balanced) binary tree.
%	rb_del      - Delete a node.
%	rb_find     - Find a node.
%	rb_free     - Free allocated tree.
%	rb_graph    - Graph the tree.
%	rb_inord    - Traverse the tree inorder.
%	rb_new      - Allocate a new tree.
%	rb_posto    - Traverse the tree postorder.
%	rb_preor    - Traverse the tree preorder.
%	rb_put      - Add a node.
%
% AVL (better balanced) binary tree.
%	avl_del     - Delete a node.
%	avl_find    - Find a node.
%	avl_free    - Free allocated tree.
%	avl_graph   - Graph the tree.
%	avl_inord   - Traverse the tree inorder.
%	avl_new     - Allocate a new tree.
%	avl_posto   - Traverse the tree postorder.
%	avl_preor   - Traverse the tree preorder.
%	avl_put     - Add a node.
%
% Stack.
%	st_empty    - Is empty?
%	st_free     - Free allocated stack.
%	st_new      - Allocate a new stack.
%	st_pop      - Pop top element.
%	st_push     - Push top element.
%	st_top      - Return top element without popping it.
%
% Queue.
%	qu_dequ     - Dequeue (remove) first element.
%	qu_empty    - Is empty?
%	qu_enqu     - Enqueue (insert) last element.
%	qu_free     - Free allocated queue.
%	qu_front    - Return first element without removing it.
%	qu_new      - Allocate a new queue.
%
% Singly linked list.
%	sl_appnd    - Append node as tail of list.
%	sl_count    - Count number of elements in list.
%	sl_del      - Delete a node.
%	sl_disp     - Display the list.
%	sl_empty    - Is empty?
%	sl_free     - Free allocated list.
%	sl_get      - Return list head.
%	sl_insrt    - Insert node as head of list.
%	sl_new      - Allocate a new list.
%	sl_puta     - Put after specified node.
%	sl_trav     - Traverse the list.
%
% Doubly linked list.
%	dl_del      - Delete a node.
%	dl_disp     - Display the list.
%	dl_empty    - Is empty?
%	dl_free     - Free allocated list.
%	dl_get      - Return list head.
%	dl_new      - Allocate a new list.
%	dl_puta     - Put after specified node.
%	dl_trav     - Traverse the list.
%
% Copyright (c) MathWorks Inc. 1998-2001. All rights reserved.
% 
% Send suggestions, bug fixes and questions to yaron@mathworks.com
%
% AVL Tree and corrections to Red-Black Tree and Binary Tree 
% made by Anthony Gallagher (http://www.cs.cmu.edu/~anthonyg) 
% of the Robotics Institute, School of Computer Science, 
% Carnegie Mellon University. Nov 2000.

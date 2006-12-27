
%[par,isfind]=find_parent(tree,lc,isfind,par)is service function,searches 
%parent of node lc in tree, returns parent and isfind=-1, if lc is left son,
%isfind=1, if lcc is right son; if parent isn't find par=lt_nil, isfind=0.
%  Svetlana Gagarinova  (c) 2005,2006

function [par,isfind]=find_parent(tree,lc,isfind,par)
global lt_nil;
if(tree~=lt_nil)&&(isfind==0)
    if(tree.left~=lt_nil)&&(tree.left.data==lc.data)&&(tree.left.prior==lc.prior)
      par=tree
      isfind=-1;
      return;
    elseif(tree.right~=lt_nil)&&(tree.right.data==lc.data)&&(tree.right.prior==lc.prior)
      par=tree;
      isfind=1;
      return; 
    end;    
    [par,isfind]=find_parent(tree.left,lc,isfind,par);
    [par,isfind]=find_parent(tree.right,lc,isfind,par);
elseif isfind==0 
    par=lt_nil;
    isfind=isfind;
else
    par=par;
    isfind=isfind;
end;    
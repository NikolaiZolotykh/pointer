
%lt_grap2(node,x,y,dx,dy)service function
%  Svetlana Gagarinova  (c) 2005,2006

function lazylt_grap2(node,x,y,dx,dy)
if node.rank~=0
  text(x+0.4,y,num2str(node.data));
  if node.left.rank~=0
    newx=x-dx;
    newy=y-dy;
    plot([x newx],[y newy],'o-');
    lt_grap2(node.left,newx,newy,dx/2,dy);
  end
  if node.right.rank~=0
    newx=x+dx;
    newy=y-dy;
    plot([x newx],[y newy],'o-');
    lt_grap2(node.right,newx,newy,dx/2,dy);
  end
end
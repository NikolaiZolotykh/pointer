
%sohlt_grap2(node,x,y,dx,dy)service function for selforgheap_graph.
%  Svetlana Gagarinova  (c) 2005,2006

function sohlt_grap2(node,x,y,dx,dy)
global lt_nil;
if node~=lt_nil
  text(x+1,y,num2str(node.data));
  if node.left~=lt_nil
    newx=x-dx;
    newy=y-dy;
    plot([x newx],[y newy],'o-');
    sohlt_grap2(node.left,newx,newy,dx/2,dy);
  end
  if node.right~=lt_nil
    newx=x+dx;
    newy=y-dy;
    plot([x newx],[y newy],'o-');
    sohlt_grap2(node.right,newx,newy,dx/2,dy);
  end
end

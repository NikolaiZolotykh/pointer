function djs_grap3(node,x,y,dx,dy)

%  Helper function for BT_GRAPH.

global bt_nil

if node~=bt_nil
    plot([x x],[y y],'o');
    text(x+dx/2,y,num2str(node.data));

  if node.left~=bt_nil
    newx=x-dx;
    newy=y-dy;
    plot([x newx],[y newy],'o-');
    djs_grap3(node.left,newx,newy,dx/2,dy);
  end

  if node.right~=bt_nil
    newx=x+dx;
    newy=y-dy;
    plot([x newx],[y newy],'o-');
    djs_grap3(node.right,newx,newy,dx/2,dy);
  end
end
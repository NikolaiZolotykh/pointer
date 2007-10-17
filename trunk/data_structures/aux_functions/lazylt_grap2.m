
%lt_grap2(node,x,y,dx,dy)service function
%  Svetlana Gagarinova  (c) 2005,2006

function lazylt_grap2(node,x,y,dx,dy)
if node.rank~=0
 if node.isexist~=0  
  text(x+0.4,y,strcat(num2str(node.data),' (',num2str(node.rank),',',num2str(node.prior),')'));
 end; 
 if node.left.rank~=0
    newx=x-dx;
    newy=y-dy;
    plot([x newx],[y newy],'o-');
    lazylt_grap2(node.left,newx,newy,dx/2,dy);
  end
  if node.right.rank~=0
    newx=x+dx;
    newy=y-dy;
    plot([x newx],[y newy],'o-');
    lazylt_grap2(node.right,newx,newy,dx/2,dy);
  end
end
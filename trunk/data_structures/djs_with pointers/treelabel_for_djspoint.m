function h=treelabel_for_djspoint(xy,d,varargin)

head1=d.tree.head.next;
while head1~=0
    node=head1.data;
    a(node.data)=node.parent;
    head1=head1.next;
end

  n=length(a);
  n1=length(xy);
  handle=zeros(n,1);
  
  i=1;
  for j=1:n
      if (a(j)~=0)  
          handle(i)=text(xy(i,1)+0.02,xy(i,2),num2str(j),'FontSize',10,varargin{:});
          i=i+1;
      end
  end
  

  if nargout>0
    h=handle;
  end;
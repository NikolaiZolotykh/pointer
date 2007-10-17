function h=treelabel_for_djspoint(xy,d,matrix,varargin)

size=0;
head1=d.names.head.next;
i=1;
while head1~=0
    node=head1.data;
    temp=djspoint_getsizesubset(d,node.data);
    a(i)=node.data;
    size=size+temp;
    head1=head1.next;
    i=i+1;
end
head2=d.tops.head.next;
i=1;
while head2~=0
    node=head2.data;
    tops(i)=node.data;
    head2=head2.next;
    i=i+1;
end

n=djspoint_getcount(d);
size=size+n;
n1=length(xy);
for i=1:n1
    x(i)=xy(i,2);
end
handle=zeros(n,1);
  
i=1;
k=1;
l=1;
  for j=1:size
      if (matrix(1,j)~=0)  
          handle(i)=text(xy(i,1)+0.02,xy(i,2),num2str(tops(l)),'FontSize',10,varargin{:});
          i=i+1;
          l=l+1;
      else
          handle(i)=text(xy(i,1)+0.02,xy(i,2),a(k),'FontSize',10,varargin{:});
          i=i+1;
          k=k+1;
      end
  end
  

  if nargout>0
    h=handle;
  end;
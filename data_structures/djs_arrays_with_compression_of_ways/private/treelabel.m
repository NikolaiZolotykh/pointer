function h=treelabel(xy,data,varargin)

  n=length(data);
  n1=length(xy);
  handle=zeros(n,1);
  
  i=1;
  for j=1:n
      if (data(j)~=0)  
          handle(i)=text(xy(i,1)+0.02,xy(i,2),num2str(j),'FontSize',10,varargin{:});
          i=i+1;
      end
  end
  

  if nargout>0
    h=handle;
  end;
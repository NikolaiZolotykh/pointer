function h=graphlabel(xy,varargin)

  n=length(xy);
  handle=zeros(n,1);
  
  for j=1:n
    handle(j)=text(xy(j,1)+0.02,xy(j,2),num2str(j),'FontSize',10,varargin{:});
  end

  if nargout>0
    h=handle;
  end;
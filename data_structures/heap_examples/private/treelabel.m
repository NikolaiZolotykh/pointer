
% service function for dheap_example_graphics
%  Svetlana Gagarinova  (c) 2005,2006

function h=treelabel(xy,keys,datas,varargin)

  n=size(xy,1);
  handle=zeros(n,1);
  
  for j=1:n
    if (keys(j)~=-1)   
     handle(j)=text(xy(j,1)+0.02,xy(j,2),strcat('(',num2str(keys(j)),';',num2str(datas(j)),')'),'FontSize',10,varargin{:});
    end; 
  end;

  if nargout>0
    h=handle;
  end;
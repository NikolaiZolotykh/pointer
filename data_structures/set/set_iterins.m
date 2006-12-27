%  set=set_iterins(bt,func,set,varargin)executes function func for each
%  element of set
%  Svetlana Chernishova (c) 2005,2006
%  Svetlana Gagarinova  (c) 2005,2006

function set=set_iterins(bt,func,set,varargin)    
 global bt_nil

if bt==bt_nil
   set=set; 
   return ;
end

set=feval(func,set,bt.data,varargin{:});
set=set_iterins(bt.left,func,set,varargin{:});
set=set_iterins(bt.right,func,set,varargin{:});

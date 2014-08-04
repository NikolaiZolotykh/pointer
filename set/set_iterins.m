function set=set_iterins(bt,func,set,varargin)    
 global bt_nil

if bt==bt_nil
   set=set; 
   return ;
end

set=feval(func,set,bt.data,varargin{:});
set=set_iterins(bt.left,func,set,varargin{:});
set=set_iterins(bt.right,func,set,varargin{:});

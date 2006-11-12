function mxx(varargin)

% MXX		Compile specified function in pointers library.
%
%   MXX F1 F2 ... FN compiles c functions F1, F2, ..., FN
%
%   See also MEXME

%   Copyright 2004 Nikolai Yu. Zolotykh


  cd @pointer
  
  n = nargin
  for k=1:n
    disp(['mex ' varargin{k}]);
    mex(varargin{k}, 'utils.c');
  end;

  cd ..



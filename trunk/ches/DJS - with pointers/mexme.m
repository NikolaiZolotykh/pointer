function mexme

% MEXME		Installation procedure for pointers library.
%
%   MEXME compile all c functions in pointers library
%
%   See also MXX

%   Copyright 2004 Nikolai Yu. Zolotykh

  cd @pointer

  mex assgn.c    utils.c
  mex eq.c       utils.c
  mex free.c     utils.c
  mex ne.c       utils.c
  mex pointer.c  utils.c
  mex ref.c      utils.c
  mex struct.c   utils.c
  mex copy.c     utils.c

  cd ..



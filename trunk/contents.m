% Pointers Library
% 
% The idea of the library is taken from DSTAX (Data Structures and
% Algorithms) toolbox (MathWorks Inc.). Unfortunately, DSTAX supplies certain
% mex-functions as dll-files and does not contain the source C code. The
% mentioned dll-files are supplied only for early versions of MATLAB (not for
% MATLAB 7.0). We implement pointer objects that support all possibilities of
% DSTAX pointers and some other possibilities. Almost all functions are
% written in C. Source code is included. On the other hand, DSATX also supplies
% a lot of m-files that implement some algorithms on data structures 
% (lists, stacks, queues, binary trees, avl, and red-black trees)
% whith using DSATX pointers. You can use these m-files jointly with 
% our implementaions of pointers class.
% 
% To compile all required mex-functions execute in MATLAB window
% MEXME function.
%
% Pointers Library implements class POINTER. Objects of this class behave
% as references in C++ or in Java (but not as pointers in C/C++). Pointers
% can be considered as synonyms. Different pointers can point to the same
% contents. Pointer contents can be considered as MATLAB structure array 1x1.
% 
% You may 
%    create pointer, i.e. allocate memory for it and define it as NULL:
%           p = pointer
%        or p = malloc
%        to create several pointers use
%           pointers p1 p2 ... pn
%    create pointer from structue:
%           p = pointer(s)
%    convert pointer to structure:
%           s = struct(p)
%    assign one pointer to other pointer:
%           b = a
%    make a copy of the contents of the pointer:
%           b = copy(a)
%    compare pointers for (in)equality:
%           b == a
%           b ~= a
%    compare pointer for (in)equality to 0 (= NULL):
%           p == 0
%           p ~= 0
%    free pointer (i.e. release memory):
%           free(p)
%    assign a value to pointer contents, for example:
%           p.field1 = value1
%           p.field2 = value2
% 
% Consider the following example.
% 
% >> a = pointer;
% >> a.name = 'Carl F. Gauss';
% >> a.age = 45;
% >> a
% a = (pointer)
%     name: 'Carl F. Gauss'
%      age: 45
% >> b = a;
% >> b.name = 'Blais Pascal';
% >> b
% b = (pointer)
%     name: 'Blais Pascal'
%      age: 45
% >> a
% a = (pointer)
%     name: 'Blais Pascal'
%      age: 45
% >> c = copy(a)
% c = (pointer)
%     name: 'Blais Pascal'
%      age: 45
% >> c.name='Isaac Newton'
% c = (pointer)
%     name: 'Isaac Newton'
%      age: 45
% >> a
% a = (pointer)
%     name: 'Blais Pascal'
%      age: 45
% >> b
% b = (pointer)
%     name: 'Blais Pascal'
%      age: 45
% 
% For other example see also P_DEMO
% 
% See also MALLOC, POINTERS, @POINTER\POINTER, @POINTER\STRUCT, 
%          @POINTER\COPY, @POINTER\FREE
%
% Send suggestions, bug fixes and questions to 
% Nikolai Yu. Zolotykh (zny@uic.nnov.ru, http://www.uic.nnov.ru/~zny)
%
%

%   Copyright 2004 Nikolai Yu. Zolotykh
%

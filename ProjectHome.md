MATLAB Pointer Library provides an implemetation of pointers and data structures in MATLAB

The idea of the library is taken from DSATX - [The Data Structures & Algorithms Toolbox](http://www.mathworks.com/matlabcentral/fileexchange/loadFile.do?objectId=212&objectType=file) (Yaron Keren). Unfortunately, DSTAX supplies certain mex-functions as dll-files and does not contain the source C code. The mentioned dll-files are supplied only for early versions of MATLAB (not for MATLAB 7.0). We implement pointer objects that support all possibilities of DSTAX pointers and some other possibilities. Almost all functions are written in C. Source code is included. On the other hand, DSATX also supplies a lot of m-files that implement some algorithms on data structures (lists, stacks, queues, binary trees, avl, and red-black trees) whith using DSATX pointers. You can use these m-files jointly with our implementaions of pointers.

You can review and rate this library on [Matlab Central](http://www.mathworks.com/cgi-bin/matlab/review.cgi?ID=23050). Thanks!



## Users of Pointer Library ##

  * MATLAB Pointer Library is used in    [The Source-Model Techique Package](http://www.ee.technion.ac.il/leviatan/smtp/index.htm) by Amit Hochman

  * MATLAB Pointer Library is used by Jason Miller, Henry de Plinval, Kaijen Hsiao in the project [Mapping Contoured Terrain: A Comparison of SLAM Algorithms for Radio-Controlled Helicopters](http://ocw.mit.edu/NR/rdonlyres/Aeronautics-and-Astronautics/16-412JSpring-2005/6BFC178F-0783-4A41-9893-9F851969AB76/0/hsiaomilerplnval.pdf)

  * MATLAB Pointer Library is used by Vamsikrishna Gopikrishna in [Temporal Potential Function based Path Planner for Dynamic Environments](http://www.mathworks.com/matlabcentral/fileexchange/22346-temporal-potential-function-based-path-planner-for-dynamic-environments)

  * MATLAB Pointer Library is used by Oliver G. King in his [SNS: Analytic Receiver Analysis Software](http://www.astro.caltech.edu/cbass/posters/2010379388.pdf)


## Acknowledgements ##

We wish to acknowledge the following individuals for suggestions:
Michel Beaulieu, Joe Groner, Christoph Henninger, Andrew Hutchinson, Omar Kofahi, Jani Lahtinen, Ralph Peters, Jose Suarez, Belinda Thom.
Special thanks to Gang Liang.

## References ##

If you use the library please cite the following in your paper:

  1. _Gagarinova S.A., Zolotykh N.Yu., Chernyshova S.N._ [POINTER library: references and dynamic data structures in MATLAB](http://www.unn.ru/pages/issues/vestnik/99999999_West_2009_4/24.pdf) // Vestnik of Lobachevski State University of Nizhni Novgorod, 2009, 4, 149-156 (in Russian) (_Гагаринова С.А., Золотых Н.Ю., Чернышова С.Н._ Библиотека POINTER: ссылочный тип и динамические структуры данных в системе MATLAB // Вестник Нижегородского университета им. Н.И. Лобачевского, 2009, № 4, С. 149–156)
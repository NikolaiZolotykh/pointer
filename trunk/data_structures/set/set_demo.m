% illustrates basic functions for sets
%  Svetlana Chernishova (c) 2005,2006
%  Svetlana Gagarinova  (c) 2005,2006

function set_demo

A=set_new;
B=set_new;
C=set_new;
D=set_new;
E=set_new;

for i=2:100 
 A=set_insert(A,i);   
end

for i=50:150 
 B=set_insert(B,i);   
end

C=set_join(A,B);
D=set_intersect(A,B);
E=set_diff(A,B);
disp('A={2..100}');
disp('B={50..150}');
disp('C=A+B:');
set_show(C);
disp('D=AB:');
set_show(D);
disp('E=A\B:');
set_show(E);
A=set_free(A);
B=set_free(B);
C=set_free(C);
D=set_free(D);
E=set_free(E);
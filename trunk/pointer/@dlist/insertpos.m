function p = insertpos(a, x, i)

% p = insertpos(a, x, i) inserts element x into the list 
%     at the i-th position and returns a pointer to x.
%     If i < 1 or i > N + 1 where N is the current 
%     length of the list then the element is inserted in the beginning
%     or at the end of the list

p = locatepos(a, i);
p = insertbefore(a, x, p);
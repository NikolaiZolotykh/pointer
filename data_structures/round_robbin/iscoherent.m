
%  b=iscoherent(matr) check graph connectivity 
%  Svetlana Gagarinova  (c) 2005,2006

function b=iscoherent(matr)
s=size(matr);
tm=zeros(s(1),s(1));
for i=1:s(1)
    num(i)=0;
end;
c=1;
for i=1:s(1)
    if(num(i)==0)
        [tm,num]=DFS(matr,tm,i,c,num,s);
        c=c+1;
    end;
end;
if(c==2) b=1;
else b=0; end;    

function [m,num]=DFS(matr,m,x,c,num,s)
st=st_new;
st=st_push(st,x);
num(x)=c;
for i=1:s(1)
    k(i)=1;
end;    
while(~st_empty(st))
      x=st_top(st);
      fl=0;
      for i=k(x):s(1)
          if(matr(x,i)~=0)&&(m(x,i)==0)
            m(x,i)=1;fl=1;k(x)=i+1;
            if(num(i)==0) 
                num(i)=c; 
                st=st_push(st,i);
            end;
          end;  
      end;    
      if(fl==0) st=st_pop(st); end;
end;
st=st_free(st);
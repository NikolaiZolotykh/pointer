function result =rb_demo1

h=rb_new;
sizer = 100;
dimension =3;

x = rand(sizer,dimension);

for i=1:sizer     
    h=rb_put(h,x(i,:),x(i,2));
end

for i=1:50   
    Z = rb_find(h,x(i,2));
    h=rb_del(h,Z);
end

rb_graph(h);
rb_free(h);

result = 1;

return;

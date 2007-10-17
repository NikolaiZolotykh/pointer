function z=isconnected(matrix,size)

z=0;
for i=1:size
    for j=1:size
        if (matrix(i,j)==0)&&(matrix(j,i)==0)
            z=0;
        else
            z=1;
            break
        end
    end
    if z==0
        return
    end
end
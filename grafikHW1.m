for k=1:10
    b=randi([-2,2],1,k);
    y=k-nnz(b);
    plot(k,y,'-mh');
    hold on
end
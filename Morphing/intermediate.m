function im3=intermediate(im1,im2,n,i,r,c)


for row=1:r
  for col=1:c
        q=double(im1(row,col));
        p=double(im2(row,col));
        im3(row,col)=p+(1-(i/n))*(q-p);
end
end
%colorear imagen
%12-04-18
%prog. Angel Hernandez

F = imread('imagenesU\moon2.jpg');
[r,c] = size(F)
M(: , : , 1) = F;
i = 1:r;
  j = 1:c;
  if(F(i,j)<128)
    F(i,j) = F(i,j) +20;
    M(i,j,2)= F(i,j);
  else  
    F(i,j) = F(i,j)-10;
    M(i,j,3)= F(i,j);
    
  end
  
subplot(1,2,1);imshow(F);
subplot(1,2,2);imshow(M);


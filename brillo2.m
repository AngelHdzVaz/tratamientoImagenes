
F = imread('imagenesU\moon2.jpg');%Carga la imagen
[r,c] = size(F);%Dimensiones de la matriz
for i=1:r
  for j=1:c
      S(i,j) = F(i,j) + 50;
      if( S(i,j) > 255 )
          S(i,j) = 255;
      end
  end  
end
for i=1:r
  for j=1:c
      R(i,j) = F(i,j) - 50;
      if( R(i,j) < 0 )
          R(i,j) = 0;
      end
  end  
end
subplot(1,3,1); imshow(S); title('Resta');
subplot(1,3,2); imshow(F); title('Orignal');
subplot(1,3,3); imshow(R); title('Suma');
%08-03-18
%Angel Federico Hernandez Vazquez

F = imread('imagenesU\barbara.jpg');
[r,c] = size(F);

imshow(F);

G = F;

Z = zeros (3,3);
for i = 2:r-1;
  for j = 2:c-1;
    for m = 1:3
      for n = 1:3
      Z(m,n)=F(i,j);
     end
    end
    G(i+1,j+1) = max(max(Z));
  end
end
 
%subplot(1,2,1); imshow(G);title('Imagen Depurada');
%subplot(1,2,2); imshow(F);title('Imagen Original');
imwrite(G,'imagen_Ruido_Negro.jpg');
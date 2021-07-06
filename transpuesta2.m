%transpuesta prueba
%Brandon Giovanni Castañón García
%Calcula la transpuesta de una matriz 
%     que contiene una imagen.

F = imread('imagenesU\moon2.jpg');%Carga la imagen
[r,c] = size(F);%Dimensiones de la matriz

%Calculo de la transpuesta%
for i=1:r
  for j=1:c
      G(j,i) = F(i,j);
  end  
end

subplot(1,2,1); imshow(F)
subplot(1,2,2); imshow(G)
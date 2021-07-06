%Prog. Angel F. Hernandez Vázquez
%Calcula la transpuesa de una imagen
%Contiene una imagen
clear all
F = imread('imagenesU\moon2.jpg'); 
G = F;
[r,c]= size(F); 


for i = 1: r
  for j = 1:c
    G(j,i) = F (i,j);
    end
 end
 
subplot(1,2,1);imshow(F)
subplot(1,2,2);imshow(G)


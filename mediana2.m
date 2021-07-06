%mediana2
%Angel Federico Hernandez Vazquez
%funcion mediana
clc
clear all
F = imread('imagenesU\barbara.jpg');
[r,c]=size(F);
G = F;
H = F;

i = 2:r-1;
j = 2:c-1;
for i = 2:r-1;
  for j = 2:c-1;
  G(i,j) =max(max(F(i-1:i+1,j-1:j+1) ) );
  H(i,j) =median(median(F(i-1:i+1,j-1:j+1) ) );
  end
end  
  
subplot(1,3,1); imshow(G);title('Quita ruido negro');
subplot(1,3,2); imshow(F);title('Imagen Original');
subplot(1,3,3); imshow(H);title('Quita ruido blanco');

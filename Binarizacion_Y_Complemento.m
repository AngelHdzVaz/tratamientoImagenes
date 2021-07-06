%Prog. Angel F. Hernandez Vázquez
%Binarizacion y complemento
%S

clear all
F = imread('imagenesU\moon2.jpg');
[r,c]=size(F);

for i = 1: r
  for j = 1:c
    G(i,j) = 255 - F(i,j);
    if(F(i,j)<128);H(i,j)=0;
    else
    H(i,j)=255;
    end
    if(H(i,j)<128);G(i,j)=255;
    else
    G(i,j)=0;
    end
    end
 end
 

 %Binarizacion
 
 
 
subplot(1,3,1); imshow(F);title('Imagen Original')
subplot(1,3,2); imshow(G);title('Binarizacion Inversa')
subplot(1,3,3); imshow(H);title('Binarizacion')
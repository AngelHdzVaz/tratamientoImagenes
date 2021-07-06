%Prog. Angel F. Hernandez Vázquez
%Binarizacion
%Solo contiene valores 0 y 255

clear all
F = imread('imagenesU\barbara.jpg');
[r,c]=size(F);
 for i = 1: r
  for j = 1:c
    G(i,j) = 255 - F(i,j);
    if(F(i,j)<128);H(i,j)=0;
    else
    H(i,j)=255;
    end
    end
 end
 subplot(1,3,1); imshow(G);title('Complemento')
subplot(1,3,2); imshow(F);title('Imagen Original')
subplot(1,3,3); imshow(H);title('Binarizada')

%Prog. Angel F. Hernandez Vázquez
%Tres Umbrales Claros

clear all
F = imread('imagenesU\moon2.jpg');
[r,c]=size(F);
G=F;
for i = 1: r
  for j = 1:c
    G(i,j) = 255 - F(i,j);
    if(F(i,j)>0&&F(i,j)<64);G(i,j)=255;
    break;
    end
    if(F(i,j)>64&&F(i,j)<192);G(i,j)=128;
    break;
    end
    if(F(i,j)>192&&F(i,j)<255);G(i,j)=255;  
    end
  end
 end
 
 
 
subplot(1,2,1); imshow(F);title('Imagen Original')
subplot(1,2,2); imshow(G);title('Tres Umbrales')
%Prog. Angel F. Hernandez Vázquez
%Tres Umbrales Claros

clear all
F = imread('imagenesU\moon2.jpg');
[r,c]=size(F);
G=F;
for i = 1: r
  for j = 1:c
    
    if(F(i,j)>0&&F(i,j)<64);G(i,j)=0;
    break;
    end
    if(F(i,j)>=64&&F(i,j)<=192);G(i,j)=128;
    break;
    end
    if(F(i,j)>192&&F(i,j)<255);G(i,j)=0;  
    break;
    end
    
    if(F(i,j)>0&&F(i,j)<64);H(i,j)=255;
    break;
    end
    if(F(i,j)>=64&&F(i,j)<=192);H(i,j)=128;
    break;
    end
    if(F(i,j)>192&&F(i,j)<255);H(i,j)=255;  
    end
  end
 end
subplot(1,3,1); imshow(G);title('Tres Umbrales Oscuro')
subplot(1,3,2); imshow(F);title('Imagen Original')
subplot(1,3,3); imshow(H);title('Tres Umbrales claros')
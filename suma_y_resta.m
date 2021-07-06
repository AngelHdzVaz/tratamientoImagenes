%Prog. Angel F. Hernandez Vázquez
%Suma y resta de una constante
%Efecto al sumar se aclara
%Y al restarle la contsante se obscurece
clear all
F = imread('imagenesU\moon2.jpg');
[r,c]=size(F);

 for i = 1: r
  for j = 1:c
    G(i,j) = F(i,j)+50;
    if(G(i,j)>255);G(i,j)=255;end
    end
 end
 
  for i = 1: r
  for j = 1:c
    H(i,j) = F(i,j)-60;
    if(H(i,j)<0);H(i,j)=0;end
    end
 end
 
 
subplot(1,3,1); imshow(G);title('Suma')
subplot(1,3,2); imshow(F);title('Imagen Original')
subplot(1,3,3); imshow(H);title('Resta')
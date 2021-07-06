%Prog. Angel F. Hernandez Vázquez
%Umbral escala grises
%q= 255,p menor  igual a p1 o p mayor igual a p2
%q = p, p1 menor que p y p menor a p2


clear all
F = imread('imagenesU\moon2.jpg');
[r,c]=size(F);
G=F;
 H=F;
%recorriendo imagen

for i = 1: r
  for j = 1:c
    
    if(F(i,j)>0&&F(i,j)<=64);G(i,j)=64; end
    
    if(F(i,j)>64&&F(i,j)<192);G(i,j)=F(i,j); end
    
    if(F(i,j)>=192&&F(i,j)<=255);G(i,j)=192; end
    
    if(F(i,j)>0&&F(i,j)<=64);H(i,j)=64;  end
    
    if(F(i,j)>64&&F(i,j)<192);H(i,j)=255-F(i,j); end
    
    if(F(i,j)>=192&&F(i,j)<=255);H(i,j)=192;  end
 
 end
 end
 
 
 
subplot(1,3,1); imshow(G);title('Imagen Umbral de la escala 128')
subplot(1,3,2); imshow(F);title('Imagen Original')
subplot(1,3,3); imshow(H);title('Imagen Umbral de la escala 64 y 192')
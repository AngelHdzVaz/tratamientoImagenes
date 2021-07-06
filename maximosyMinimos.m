%inserte ruido en la imagen de barbara
%aplique los filtros de maximo y de minimo
%insertamos ruido en forma aleatoria en una imagen
%compare y analice el efecto
%08-03-18
%Angel F Hernandez Vazquez

clear all
F = imread('imagenesU\barbara.jpg');
[r,c]=size(F);
G = F;

%ruido 233,0
%maximos
for i = 1:500;
  %for  j = 1:100;
    m = (round(rand(1,1)*r));
    n = (round(rand(1,1)*c));
    %G(m,n) = F(m,n) = 0;
    G(m,n) = 255;
    
%end
end
imwrite(G,'imagenesU\barbara.jpg');
%minimos
for  j = 1:500;
    m = (round(rand(1,1)*r));
    n = (round(rand(1,1)*c));
    G(m,n)= 0;
    
    
end
    
    
subplot(1,2,1); imshow(G);title('Imagen maximos y minimos');
subplot(1,2,2); imshow(F);title('Imagen Original');
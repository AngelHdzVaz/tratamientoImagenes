%deteccion de bordes
%programado por Angel Hernandez
%22/03/18
%Un borde en una imagen es una transición de claro a obscuro o viceversa. semodela como una rampa
%operador sobel, para detectar ejes

clear all
F = imread('imagenesU\raybottle.jpg');
[r,c]=size(F);
G = F;
%filtro
Z={1,0,-1;2,0,-2;1,0,-1};
%proceso de aplicacion del filtro
for i = 2: r-1
  for j = 2: c-1
      G(i,j)=Z(1,1)*P(i-1,j-1)   +Z(1,2)*P(i-1,j)    +Z(1,3)*P(i-1,j+1) ...
            +Z(2,1)*P(i,j.-1)   +Z(2,2)*P(i,j)      +Z(2,3)*P(i,j+1)...
            +Z(3,1)*P(i+1,j-1)  +Z(3,2)*P(i+1,j)    +Z(3,3)*P(i+1,j+1);
    %k =1:3;
    %mostramos resultados original y procesada


subplot(1,2,1); imshow(G);title('Imagen Operador sobel');
subplot(1,2,2); imshow(F);title('Imagen Original');
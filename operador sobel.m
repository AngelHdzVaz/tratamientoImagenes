%deteccion de bordes
%programado por Angel Hernandez
%22/03/18
%Un borde en una imagen es una transición de claro a obscuro o viceversa. semodela como una rampa
%operador sobel, para detectar ejes

clear all
F = imread('imagenesU\raybottle.jpg');
[r,c]=size(F);
%filtro
Z={1,0,-1;2,0,-2;1,0,-1};
%proceso de aplicacion del filtro
for i = 2: r-1
  for j = 2: c-1
    
    k =1:3;
    
  end
end


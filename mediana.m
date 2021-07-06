%mediana
%09-03-18
%Angel Federico Hernandez Vazquez
%funcion mediana
%min = 57-60
%mediana = 87
%maximo = 90-200
clc
clear all
F = imread('imagenesU\barbara.jpg');
[r,c]=size(F);
G = F;
z = zeros(3,3);
for i = 2:r-1;
   for j = 2:c-1;
     for m = 1:3
       for n = 1:3
         
         z(m,n) = F(i,j);
       end
     end
     G(i+1,j+1) = median(median(z));
   end   
end 
subplot(1,2,1); imshow(G);title('Quita ruido negro');
subplot(1,2,2); imshow(F);title('Imagen Original');
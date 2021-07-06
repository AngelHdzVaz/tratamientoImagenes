%Filtro Operador Gaussiano
%1-03-18
%Angel F Hernandez Vazquez
clear all
F = imread('imagenesU\ruido1.jpg');
[r,c]=size(F);
%Calculo de los elementos del filtro
sigm = 1;
T = 0;
for i = -2:2;
  for j = -2:2;
    G(i+3,j+3) =exp(-(i.^2+j.^2)/(2*(sigm^2)));
      T = T + G(i+3,j+3);
  end
end
i = 1:5;
  j = 1:5;
    G(i,j)=G(i,j)/T;
 i=3: r-3;
     j=3: c-3;
         H(i,j)=  G(1,1)*F(i-2,j-2)   +   G(1,2)*F(i-2,j-1)   +   G(1,3)*F(i-2,j)  +   G(1,4)*F(i-2,j+1)   +   G(1,5)*F(i-2,j+2)...
                 +G(2,1)*F(i-1,j-2)   +   G(2,2)*F(i-1,j-1)   +   G(2,3)*F(i-1,j)  +   G(2,4)*F(i-1,j+1)   +   G(2,5)*F(i-1,j+2)...
                 +G(3,1)*F(i,j-2)     +   G(3,2)*F(i,j-1)     +   G(3,3)*F(i,j)    +   G(3,4)*F(i,j+1)     +   G(3,5)*F(i,j+2)...
                 +G(4,1)*F(i+1,j-2)   +   G(4,2)*F(i+1,j-1)   +   G(4,3)*F(i+1,j)  +   G(4,4)*F(i+1,j+1)   +   G(4,5)*F(i+1,j+2)...
                 +G(5,1)*F(i+2,j-2)   +   G(5,2)*F(i+2,j-1)   +   G(5,3)*F(i+2,j)  +   G(5,4)*F(i+2,j+1)   +   G(5,5)*F(i+2,j+2);
subplot(1,2,1);imshow(H);title('Imagen Filtro Operador Gaussiano');
subplot(1,2,2);imshow(F);title('Imagen Original');

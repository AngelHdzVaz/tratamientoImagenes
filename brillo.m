%Prog. Angel F. Hernandez Vázquez
%Suma y resta de una constante
%Efecto al sumar se aclara
%Y al restarle la contsante se obscurece

F = imread('imagenesU\moon2.jpg');
[r,c]=size(F);

 for i = 1: r
  for j = 1:c
    G(i,j) = 255 - F(i,j);
    end
 end
 
  for i = 1: r
  for j = 1:c
    H(i,j) = F(i,j)- G(i,j);
    end
 end
 
 
subplot(1,3,1); imshow(F);title('Imagen Original')
subplot(1,3,2); imshow(G);title('Complemento')
subplot(1,3,3); imshow(H);title('Diferencia')
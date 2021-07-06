%Prog. Angel F. Hernandez Vázquez
%Vecindades : Filtros 16/02/18
%

clear all
P = imread('imagenesU\moon2.jpg');
[r,c]=size(P);
f =[1,2,1;0,1,0;-1,-2,-1];
Q = P; 
%recorriendo imagen
tic
for i = 2: r - 1
  for j = 2:c - 1
   
   Q(i,j)=  f(1,1)*P(i-1,j-1)   +f(1,2)*P(i-1,j)    +f(1,3)*P(i-1,j+1) ...
            +f(2,1)*P(i,j.-1)   +f(2,2)*P(i,j)      +f(2,3)*P(i,j+1)...
            +f(3,1)*P(i+1,j-1)  +f(3,2)*P(i+1,j)    +f(3,3)*P(i+1,j+1);
  end
end
toc
subplot(1,2,1); imshow(Q);title('Imagen Filtro')
subplot(1,2,2); imshow(P);title('Imagen Original')
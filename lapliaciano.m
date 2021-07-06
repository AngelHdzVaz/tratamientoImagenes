%deteccion de bordes
%programado por Angel Hernandez
%22/03/18

%operador lapliaciano

clear all
P = imread('imagenesU\catedral.jpg');
[r,c]=size(P);
G = P;
H = P;
I = P;
%filtro
Z=[1,-2,1;-2,4,-2;1,-2,1];
Z1=[0,-1,0;-1,4,-1;0,-1,0];
Z2=[-1,-1,-1;-1,8,-1;1,-1,-1];
%proceso de aplicacion del filtro
 i = 2: r-1;
   j = 2: c-1;
      G(i,j)=Z2(1,1)*P(i-1,j-1)   +Z2(1,2)*P(i-1,j)    +Z2(1,3)*P(i-1,j+1) ...
            +Z2(2,1)*P(i,j.-1)   +Z2(2,2)*P(i,j)      +Z2(2,3)*P(i,j+1)...
            +Z2(3,1)*P(i+1,j-1)  +Z2(3,2)*P(i+1,j)    +Z2(3,3)*P(i+1,j+1);
    %k =1:3;
    %mostramos resultados original y procesada
i = 2: r-1;
   j = 2: c-1;
      H(i,j)=Z1(1,1)*P(i-1,j-1)   +Z1(1,2)*P(i-1,j)    +Z1(1,3)*P(i-1,j+1) ...
            +Z1(2,1)*P(i,j.-1)   +Z1(2,2)*P(i,j)      +Z1(2,3)*P(i,j+1)...
            +Z1(3,1)*P(i+1,j-1)  +Z1(3,2)*P(i+1,j)    +Z1(3,3)*P(i+1,j+1);
            
i = 2: r-1;
   j = 2: c-1;
      I(i,j)=Z(1,1)*P(i-1,j-1)   +Z(1,2)*P(i-1,j)    +Z(1,3)*P(i-1,j+1) ...
            +Z(2,1)*P(i,j.-1)   +Z(2,2)*P(i,j)      +Z(2,3)*P(i,j+1)...
            +Z(3,1)*P(i+1,j-1)  +Z(3,2)*P(i+1,j)    +Z(3,3)*P(i+1,j+1);

subplot(1,4,1); imshow(G);title('Imagen Operador lapliaciano 1');
subplot(1,4,2); imshow(H);title('Imagen Operador lapliaciano 2');
subplot(1,4,3); imshow(I);title('Imagen Operador lapliaciano 3');
subplot(1,4,4); imshow(P);title('Imagen Original');
imwrite(H,'lapliaciano.jpg');
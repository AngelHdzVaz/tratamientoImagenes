%deteccion de bordes
%programado por Angel Hernandez
%22/03/18
%Un borde en una imagen es una transición de claro a obscuro o viceversa. semodela como una rampa
%operador sobel, para detectar ejes

clear all
P = imread('imagenesU\otra1.jpg');
[r,c]=size(P);
G = P;
H= P;
%filtro sobel
Z=[1,0,-1;2,0,-2;1,0,-1];
Z1=[-1,-2,-1;0,0,0;1,2,1];
Z2=[-1,0,2;0,0,0;1,0,-2];

%filtro prewit

R=[1,0,-1;1,0,-1;1,0,-1];
R1=[1,1,1;0,0,0;-1,-1,1];
RC=[1,0,-1;0,0,0;1,0,-1];
RE=[0,1,1;-1,0,1;-1,-1,0];
RCC=[0,1,0;1,0,-1;0,-1,0];
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
      H(i,j)=RE(1,1)*P(i-1,j-1)   +RE(1,2)*P(i-1,j)    +RE(1,3)*P(i-1,j+1) ...
            +RE(2,1)*P(i,j.-1)   +RE(2,2)*P(i,j)      +RE(2,3)*P(i,j+1)...
            +RE(3,1)*P(i+1,j-1)  +RE(3,2)*P(i+1,j)    +RE(3,3)*P(i+1,j+1);


%subplot(1,3,1); imshow(G);title('Imagen Operador sobel');
subplot(1,2,1); imshow(P);title('Imagen Original');
subplot(1,2,2);imshow(H);title('Imagen Operador prewit');
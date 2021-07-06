%Fitros promedio de paso bajo
%22-02-18
%Programado por Angel F Hernandez Vazquez
clear all
 %limpiar imagenes
P = imread('imagenesU\nueva.jpg');
[r,c]=size(P);
H=P;
f = (1/9)*[1,1,1;1,1,1;1,1,1;];
 for i=2: r-1
    for j=2: c-1
         H(i,j)=  f(1,1)*P(i-1,j-1)   +f(1,2)*P(i-1,j)    +f(1,3)*P(i-1,j+1) ...
            +f(2,1)*P(i,j.-1)   +f(2,2)*P(i,j)      +f(2,3)*P(i,j+1)...
            +f(3,1)*P(i+1,j-1)  +f(3,2)*P(i+1,j)    +f(3,3)*P(i+1,j+1);
    end
    
end
subplot(1,2,1); imshow(H);title('Imagen Filtro Paso Bajo')
subplot(1,2,2); imshow(P);title('Imagen Original')
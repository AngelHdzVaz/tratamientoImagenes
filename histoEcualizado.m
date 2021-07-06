%26/04/18
%Programa histograma
%pkg load image .... colocar en linea de comando
F = imread('imagenesU\moon2.jpg');
G = histeq(F);

subplot(2,2,1);imshow(F),title('imagen original');
subplot(2,2,2);hist(F),title('Histograma');
subplot(2,2,3);imshow(G),title('imagen ecualizada');
subplot(2,2,4);hist(G),title('Histograma');



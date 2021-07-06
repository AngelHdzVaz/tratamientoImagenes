%26/04/18
%Programa histograma
%pkg load image .... colocar en linea de comando
F = imread('imagenesU\cubo.jpg');
G1 = (F(:,:,1));
G2 = (F(:,:,2));
G3 = (F(:,:,3));
H1 = histeq(G1);
H2 = histeq(G2);
H3 = histeq(G3);

H = cat(3,H1,H2,H3);
subplot(4,2,1);imshow(F),title('imagen original');
subplot(4,2,2);hist(G1),title('Hist. G1');
subplot(4,2,3);hist(G2),title('Hist. G2');
subplot(4,2,4);hist(G3),title('Hist. G3');
subplot(4,2,5);imshow(H),title('imagen ecualizada');
subplot(4,2,6);hist(H1),title('Hist. H1');
subplot(4,2,7);hist(H2),title('Hist. H2');
subplot(4,2,8);hist(H3),title('Hist. H3');



%imagenes a colorbar
%12-04-18
%prog. Angel Hernandez

F = imread('imagenesU\cubo.jpg');
G = 255- F;
H = (F(:,:,1)+F(:,:,2)+F(:,:,3))/3;
subplot(3,2,1);imshow(F);
subplot(3,2,2);imshow(F(:,:,1));
subplot(3,2,3);imshow(F(:,:,2));
subplot(3,2,4);imshow(F(:,:,3));
subplot(3,2,5);imshow(G);
subplot(3,2,6);imshow(H);


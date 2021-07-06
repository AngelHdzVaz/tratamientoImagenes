%colorear imagen
%13-04-18
%prog. Angel Hernandez
%cncatenar imagen
F = imread('imagenesU\barbaran.jpg');
G = F;  
 G1(:,:)=F;
 G2(:,:)=F-100;
 G3(:,:)=F-70;
 
 G =cat(3,G1,G2,G3);
 imshow(G);
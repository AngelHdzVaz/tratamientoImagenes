%combinacion mezcla
%13-04-18

F = imread('imagenesU\barbaran.jpg');
G = imread('imagenesU\barbaran.jpg');


[r1,c1] = size(F);
[r2,c2] = size(G);

r = min(r1,r2);
c = min(c1,c2);

H1 = F(1:r,1:c);
H2 = G(1:r,1:c);

H = cat(3,H1,H2,H1-H2-30);

imshow(H);